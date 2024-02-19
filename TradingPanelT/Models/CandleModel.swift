//
//  Models.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import Foundation
// MARK: - CandleModelElement
struct CandleModelElement: Codable, Identifiable {
    var id = UUID().uuidString
    
    let low, high, volume, time: Int
    let candleModelOpen, close, pairID: Int
    let pair: String?
    let lowF, highF, openF, closeF: String
    let volumeF: String

    enum CodingKeys: String, CodingKey {
        case low, high, volume, time
        case candleModelOpen = "open"
        case close
        case pairID = "pair_id"
        case pair
        case lowF = "low_f"
        case highF = "high_f"
        case openF = "open_f"
        case closeF = "close_f"
        case volumeF = "volume_f"
    }
}

typealias CandleModel = [CandleModelElement]

// testing check difference btw float and int values
struct SimplefiedData: Identifiable {
    let id = UUID().uuidString
    let lowF: Double
    let highF: Double
    let time: Date
    let openF: Double
    let closeF: Double
    let volume: Double
    
}
