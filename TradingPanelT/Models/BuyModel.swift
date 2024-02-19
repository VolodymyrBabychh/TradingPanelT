//
//  BuyModel.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import Foundation
// MARK: - Buy
struct Buy: Codable {
    let buy, sell: [BuyElement]
}

// MARK: - BuyElement
struct BuyElement: Codable, Identifiable {
    let id = UUID().uuidString
    let volume, count, rate, price: Int
    let rateF, volumeF: String

    enum CodingKeys: String, CodingKey {
        case volume, count, rate, price
        case rateF = "rate_f"
        case volumeF = "volume_f"
    }
}

struct OrderModelElement: Identifiable {
    let isBuy: Bool
    let volume: Int
    let price: Double
    let rate: Double
    let id = UUID().uuidString
}
