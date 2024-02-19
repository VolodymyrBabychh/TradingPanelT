//
//  OrderBookViewModel.swift
//  TradingPanelT
//
//  Created by Volodymyr Babych on 19.02.2024.
//

import Foundation
import Combine

class OrderBookViewModel: ObservableObject {
    @Published var model: Buy?
    
    private var networking: OrderBookNetworking?
    private var cancellable: AnyCancellable?
    
    private var pairId: String? {
        didSet {
            subscribeToChanges()
        }
    }
    
    init(pairId: String) {
        self.pairId = pairId
        subscribeToChanges()
    }
    
    func updatePairId(newPairId: String) {
        guard !newPairId.isEmpty else { return }
        self.pairId = newPairId
    }
    
    private func subscribeToChanges() {
        guard let pairId = pairId, !pairId.isEmpty else { return }
        self.networking = OrderBookNetworking(pairId: pairId)
        cancellable = self.networking?.$model.sink(receiveValue: { [weak self] in
            self?.model = $0
        })
    }
}
