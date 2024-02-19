//
//  ContentView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct TradingView: View {

    var body: some View {
        VStack {
            TopMenuView()
            TopPanelView()
            BuyItemsView()
            OrderBarView()
            OrderItemsView()
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray900)
        .ignoresSafeArea()
        .hideNavigationBar()
        .onAppear {
            
        }
    }
}

