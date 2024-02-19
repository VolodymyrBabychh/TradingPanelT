//
//  TickerViewModel.swift
//  TradingPanelT
//
//  Created by Volodymyr Babych on 19.02.2024.
//

import Foundation

final class TickerViewModel: ObservableObject {
    let model: Ticker
    @Published var currentPair: Datum {
        didSet {
            UserDefaults.standard.setValue(currentPair.name, forKey: "currentPair")
        }
    }

    init(model: Ticker) {
        self.model = model
        let currentPair: Datum
        if let name = UserDefaults.standard.string(forKey: "currentPair"), let pair = model.data.first(where: { $0.name == name }) {
            currentPair = pair
        } else {
            currentPair = model.data.first!
        }
        self.currentPair = currentPair
    }
}
