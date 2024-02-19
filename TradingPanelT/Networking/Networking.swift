//
//  Networking.swift
//  TradingPanelT
//
//  Created by Volodymyr Babych on 19.02.2024.
//

import Foundation
import Combine
import Charts

final class TickerNetworking: NetworkingModel<Ticker> {
    override var url: URL {
        URL(string: "https://api.exzi.com/api/default/ticker")!
    }
}

final class OrderBookNetworking: NetworkingModel<Buy> {
    let pairId: String
    
    override var url: URL {
        URL(string: "https://socket.exzi.com/book/list?pair_id=\(pairId)&buy=1&sell=1")!
    }
    
    init(pairId: String) {
        self.pairId = pairId
        super.init()
        startPolling()
    }
    
    deinit {
        stopPolling()
    }
    
    private weak var timer: Timer?
    
    private func startPolling() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
            [weak self] timer in
            guard let self else {
                timer.invalidate()
                return
            }
            fetchData()
        }
    }
    
    private func stopPolling() {
        timer?.invalidate()
        timer = nil
    }
}

final class CandleViewModel: ObservableObject {
    @Published var data: [SimplefiedData] = []
    private var cancellable: AnyCancellable?
    
    // update data single time
    func fetchData(value: String) {
        let url = URL(string: "https://socket.exzi.com/graph/hist?t=\(value)&r=D&limit=5000&end=1705363200")!
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: CandleModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                print(completion)
            }, receiveValue: {[weak self] data in
                for obj in data {
                    let time = Date(timeIntervalSince1970: TimeInterval(obj.time))
                    let volume = Double(obj.volume)
                    guard let lowF = Double(obj.lowF), let highF = Double(obj.highF), let openF = Double(obj.openF), let closeF = Double(obj.closeF) else {return}
                    self?.data.append(SimplefiedData(lowF: lowF, highF: highF, time: time, openF: openF, closeF: closeF, volume: volume))
                }
            })
    }
}

