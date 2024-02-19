//
//  TopPanelView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

extension Color {
    static func percent(percent: Double) -> Color {
        if percent > 0 {
            return ColorConstants.Teal400
        } else if percent < 0 {
            return ColorConstants.Red400
        } else {
            return ColorConstants.Gray100
        }
    }
}

extension Double {
    var formattedPercent: String {
        if self > 0 {
            return "+" + String(format: "%.3f%%", self)
        }
        return String(format: "%.3f%%", self)
    }
}

struct TopPanelView: View {
    @EnvironmentObject private var ticker: TickerViewModel
    @State private var isShowingCandleView = false

    var body: some View {
        HStack {
            HStack {
                Menu {
                    ForEach(ticker.model.data) { pair in
                        Button(action: {
                            ticker.currentPair = pair
                        }, label: {
                            Text(pair.name + " " + pair.percentH.formattedPercent)
                        })
                    }
                } label: {
                    HStack {
                        Image("img_vector_gray_100_12x18")
                            .resizable()
                            .frame(width: getRelativeWidth(18.0),
                                   height: getRelativeHeight(12.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                    }
                    Text(ticker.currentPair.name)
                        .font(FontScheme
                            .kMontserratSemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(95.0),
                               height: getRelativeHeight(22.0), alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(8.0))
                    Text(ticker.currentPair.percentH.formattedPercent)
                        .font(FontScheme
                            .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(Color.percent(percent: ticker.currentPair.percentH))
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(43.0),
                               height: getRelativeHeight(15.0), alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(8.0))
                }
            }
            .frame(width: getRelativeWidth(172.0), height: getRelativeHeight(22.0),
                   alignment: .center)
            Spacer()
            HStack {
                NavigationLink(
                    destination: CandlesView()
                        .environmentObject(ticker)
                        .environmentObject(OrderBookViewModel(pairId: ticker.currentPair.id)),
                    isActive: $isShowingCandleView) {
                        EmptyView()
                    }
                Button {
                    isShowingCandleView = true
                } label: {
                    Image("img_frame100000231")
                        .resizable()
                        .frame(width: getRelativeWidth(16.0),
                               height: getRelativeHeight(18.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                Image("img_frame100000239")
                    .resizable()
                    .frame(width: getRelativeWidth(17.0),
                           height: getRelativeHeight(3.0), alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.leading, getRelativeWidth(17.0))
            }
            .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(18.0),
                   alignment: .bottom)
        }
        .frame(width: getRelativeWidth(357.0), height: getRelativeHeight(22.0),
               alignment: .center)
        .padding(.top, getRelativeHeight(14.0))
        .padding(.horizontal, getRelativeWidth(16.0))
        .background(ColorConstants.Gray900)
    }
}
