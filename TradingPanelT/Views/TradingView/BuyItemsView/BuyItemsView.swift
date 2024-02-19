//
//  BuyItemsView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct BuyItemsView: View {
    @EnvironmentObject private var ticker: TickerViewModel

    var body: some View {
        HStack {
            BuyItemsLeft()
                .padding(.leading)
            BuyItemsRight(pairId: ticker.currentPair.id)
                .padding()
        }
    }
}
