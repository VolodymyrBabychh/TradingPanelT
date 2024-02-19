//
//  CandlesHeaderView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI
//MARK: Header
struct CandlesHeaderView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject private var ticker: TickerViewModel
    var body: some View {
        VStack {
            HStack {
                HStack {
                    HStack {
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image("img_arrowleft")
                                .resizable()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeHeight(10.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                        })
                        Image("img_vector")
                            .resizable()
                            .frame(width: getRelativeWidth(18.0),
                                   height: getRelativeHeight(9.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(12.0))
                        Text([ticker.currentPair.main.iso3, ticker.currentPair.second.iso3].joined(separator: "/"))
                            .font(FontScheme
                                .kMontserratSemiBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray100)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(106.0),
                                   height: getRelativeHeight(25.0), alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(25.0),
                           alignment: .center)
                    Spacer()
                    HStack {
                        Image("img_vector_blue_400")
                            .resizable()
                            .frame(width: getRelativeWidth(17.0),
                                   height: getRelativeHeight(16.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Image("img_vector_gray_100")
                            .resizable()
                            .frame(width: getRelativeWidth(17.0),
                                   height: getRelativeHeight(16.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(19.0))
                    }
                    .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(4.0))
                }
            }
        }
    }
}
