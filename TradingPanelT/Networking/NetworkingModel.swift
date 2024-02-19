//
//  NetworkingModel.swift
//  TradingPanelT
//
//  Created by Volodymyr Babych on 19.02.2024.
//

import Foundation
import Combine

protocol NetworkingModelType {
    var url: URL { get }
}

class NetworkingModel<M: Decodable>: ObservableObject, NetworkingModelType {
    var url: URL {
        fatalError("should be overrided")
    }
    
    @Published var model: M?
    @Published var error: Error?
    private var cancellable: AnyCancellable?
    
    init() {}
    
    func fetchData() {
        print("fetchDATA: \(url)")
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map({ $0.data })
            .decode(type: M.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] completion in
                if case .failure(let failure) = completion {
                    self?.error = failure
                }
            }, receiveValue: { [weak self] value in
                self?.model = value
            })
    }
}
