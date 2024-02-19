//
//  CandlesView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI


struct CandlesView: View {
    var body: some View {
        VStack {
            CandlesHeaderView()
                .padding(.top, 30)
                .padding()
            CandlesTopMenuView()
            VStack {
                ScrollView(.vertical) {
                    CandlesTopDetailView()
                    CandleChartsView()
                    CanldesItemMenuView()
                    CandlesItemView()
                }
                
            }
            .padding(.bottom, -380)
            CandlesBottomPanel()
                .padding(.bottom, 40)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray900)
        .hideNavigationBar()
        
    }
}

#Preview {
    CandlesView()
}
