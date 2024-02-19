//
//  TradingPanelTApp.swift
//  TradingPanelT
//
//  Created by Volodymyr Babych on 19.02.2024.
//
import SwiftUI

@main
struct TradingPanelApp: App {
    @StateObject private var ticker: TickerNetworking = TickerNetworking()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                if let model = ticker.model {
                    TradingView()
                        .environmentObject(TickerViewModel(model: model))
                } else {
                    LoadingView(error: ticker.error)
                }
            }
            .onAppear(perform: {
                ticker.fetchData()
            })
        }
    }
}

