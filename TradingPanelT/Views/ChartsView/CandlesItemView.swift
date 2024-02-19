//
//  CandlesItemView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct CandlesItemView: View {
    var body: some View {
        Group {
            HStack {
                HStack {
                    Text(StringConstants.kLblQuantityBtc)
                        .font(FontScheme
                            .kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(82.0),
                               height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                    Text(StringConstants.kLblPriceUsdt)
                        .font(FontScheme
                            .kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(69.0),
                               height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(60.0))
                }
                .frame(width: getRelativeWidth(211.0),
                       height: getRelativeHeight(14.0), alignment: .bottom)
                Spacer()
                HStack {
                    Text(StringConstants.kLbl01)
                        .font(FontScheme
                            .kMontserratRomanMedium(size: getRelativeHeight(10.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(11.0),
                               height: getRelativeHeight(13.0),
                               alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(9.0))
                    Image("img_path56665_bluegray_401")
                        .resizable()
                        .frame(width: getRelativeWidth(7.0),
                               height: getRelativeHeight(4.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(15.0))
                }
                .frame(width: getRelativeWidth(57.0),
                       height: getRelativeHeight(20.0), alignment: .center)
                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                        bottomLeft: 4.0, bottomRight: 4.0)
                    .stroke(ColorConstants.Bluegray700,
                            lineWidth: 1))
                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                           bottomLeft: 4.0, bottomRight: 4.0)
                    .fill(Color.clear.opacity(0.7)))
            }
            .frame(width: getRelativeWidth(353.0),
                   height: getRelativeHeight(20.0), alignment: .center)
            .padding(.top, getRelativeHeight(9.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            OrderView()
            .hideNavigationBar()
            .padding()
            .padding(.top, getRelativeHeight(-20.0))
        }
        .background(ColorConstants.Gray900)
    }
}


struct OrderView: View {
    @EnvironmentObject private var ticker: TickerViewModel
    @EnvironmentObject private var orderBook: OrderBookViewModel
    var body: some View {
        HStack {
            VStack {
                if let buy = orderBook.model?.buy {
                    ForEach(buy, id: \.id) { order in
                        OrderRow(order: order, isBuy: true, isMainScreen: false, maxOrderVolume: findMaxVolume(for: buy))
                    }
                } else {
                    //EmptyView()
                }
            }
            Spacer()
            VStack {
                if let sell = orderBook.model?.sell {
                    ForEach(sell, id: \.id) { order in
                        OrderRow(order: order, isBuy: false, isMainScreen: false, maxOrderVolume: findMaxVolume(for: sell))
                    }
                } else {
                    //EmptyView()
                }
            }
        }
        .background(ColorConstants.Gray900)
    }
}

struct OrderRow: View {
    let order: BuyElement
    let isBuy: Bool
    let isMainScreen: Bool
    let maxBarLength: CGFloat = 100
    let maxOrderVolume: Int
    var body: some View {
        HStack {
            if isMainScreen == false {
                if isBuy {
                    ZStack(alignment: .trailing) {
                        Rectangle()
                            .fill(ColorConstants.Teal400)
                            .frame(width: calculateBarLength(for: order.volume, maxVolume: maxOrderVolume))
                            .padding(.leading, 0)
                            .opacity(0.3)
                        HStack {
                            Text(order.volumeF)
                                .foregroundColor(ColorConstants.Gray100)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(FontScheme
                                    .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                            Text(order.rateF)
                                .foregroundColor(ColorConstants.Teal400)
                                .font(FontScheme
                                    .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                        }
                    }
                } else {
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .fill(ColorConstants.Red400)
                            .frame(width: calculateBarLength(for: order.volume, maxVolume: maxOrderVolume))
                            .padding(.trailing, 0)
                            .opacity(0.3)
                        HStack {
                            Text(order.rateF)
                                .foregroundColor(ColorConstants.Red400)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(FontScheme
                                    .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                            Text(order.volumeF)
                                .foregroundColor(ColorConstants.Gray100)
                                .font(FontScheme
                                    .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                        }
                    }
                }
            } else {
                if isBuy {
                    ZStack(alignment: .trailing) {
                        Rectangle()
                            .fill(ColorConstants.Teal400)
                            .frame(width: calculateBarLength(for: order.volume, maxVolume: maxOrderVolume))
                            .padding(.leading, 0)
                            .opacity(0.3)
                        HStack {
                            Text(order.rateF)
                                .foregroundColor(ColorConstants.Teal400)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(FontScheme
                                    .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                            Text(order.volumeF)
                                .foregroundColor(ColorConstants.Gray100)
                                .font(FontScheme
                                    .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                        }
                    }
                } else {
                    ZStack(alignment: .trailing) {
                        Rectangle()
                            .fill(ColorConstants.Red400)
                            .frame(width: calculateBarLength(for: order.volume, maxVolume: maxOrderVolume))
                            .padding(.trailing, 0)
                            .opacity(0.3)
                        HStack {
                            Text(order.rateF)
                                .foregroundColor(ColorConstants.Red400)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(FontScheme
                                    .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                            Text(order.volumeF)
                                .foregroundColor(ColorConstants.Gray100)
                                .font(FontScheme
                                    .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                        }
                    }
                }
            }

        }
        .background(ColorConstants.Gray900)
    }
    
    func calculateBarLength(for order: Int, maxVolume: Int) -> CGFloat {
        let normalizedRatio: Double = Double(order) / Double(maxVolume)
        return CGFloat(normalizedRatio) * maxBarLength
    }
}

