//
//  TickerModel.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import Foundation
// MARK: - Ticker
struct Ticker: Codable {
    let status: Bool
    let data: [Datum]
    let isLogin: Bool

    enum CodingKeys: String, CodingKey {
        case status, data
        case isLogin = "is_login"
    }
}

// MARK: - Datum
struct Datum: Codable, Equatable, Identifiable {
    static func == (lhs: Datum, rhs: Datum) -> Bool {
        return lhs.datumID == rhs.datumID
    }
    
    let id: String
    let datumID, mainCurrencyID, secondCurrencyID, timeCreate: Int
    let timeUpdate, status: Int
    let name: String
    let type, datumOpen: Int
    let volume: Double
    let volumeWorld, volumeSecondWorld: String
    let close, high, low: Int
    let percent, percentW, percentH: Double
    let rate: Int
    let logo: JSONNull?
    let main: Main
    let volumes: Volumes
    let second: Main
    let commissionPercent: Double
    let commissionPercentMarket, minAmount: CommissionPercentMarket
    let fixed, commissionMin: JSONNull?
    let lastRate24, lastRateW, lastRateH: Int
    let typeUpdateTime, pairType: JSONNull?
    let filters: [String]
    let openF, closeF, highF, lowF: String
    let rateF, lastRate24F, lastRateWF, lastRateHF: String
    let volumeF, volumeSecondWorldF, volumeWorldF: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case datumID = "id"
        case mainCurrencyID = "main_currency_id"
        case secondCurrencyID = "second_currency_id"
        case timeCreate = "time_create"
        case timeUpdate = "time_update"
        case status, name, type
        case datumOpen = "open"
        case volume
        case volumeWorld = "volume_world"
        case volumeSecondWorld = "volume_second_world"
        case close, high, low, percent, percentW, percentH, rate, logo, main, volumes, second
        case commissionPercent = "commission_percent"
        case commissionPercentMarket = "commission_percent_market"
        case minAmount = "min_amount"
        case fixed
        case commissionMin = "commission_min"
        case lastRate24 = "last_rate24"
        case lastRateW = "last_rateW"
        case lastRateH = "last_rateH"
        case typeUpdateTime = "type_update_time"
        case pairType = "pair_type"
        case filters
        case openF = "open_f"
        case closeF = "close_f"
        case highF = "high_f"
        case lowF = "low_f"
        case rateF = "rate_f"
        case lastRate24F = "last_rate24_f"
        case lastRateWF = "last_rateW_f"
        case lastRateHF = "last_rateH_f"
        case volumeF = "volume_f"
        case volumeSecondWorldF = "volume_second_world_f"
        case volumeWorldF = "volume_world_f"
    }
}

enum CommissionPercentMarket: Codable {
    case double(Double)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Double.self) {
            self = .double(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(CommissionPercentMarket.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for CommissionPercentMarket"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .double(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - Main
struct Main: Codable {
    let id, decimal: Int
    let iso3, name: String
    let rateUsd, rateUsdt, rateBtc, rateEth: Int

    enum CodingKeys: String, CodingKey {
        case id, decimal, iso3, name
        case rateUsd = "rate_usd"
        case rateUsdt = "rate_usdt"
        case rateBtc = "rate_btc"
        case rateEth = "rate_eth"
    }
}

// MARK: - Volumes
struct Volumes: Codable {
    let d, m, w: Double
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
