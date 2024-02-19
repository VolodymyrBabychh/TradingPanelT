//
//  BuyItemsRight.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct BuyItemsRight: View {
    @EnvironmentObject private var ticker: TickerViewModel
    @StateObject private var orderBook: OrderBookViewModel

    init(pairId: String) {
        _orderBook = StateObject(wrappedValue: OrderBookViewModel(pairId: pairId))
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Price(\(ticker.currentPair.second.iso3))")
                    .font(FontScheme
                        .kMontserratRomanMedium(size: getRelativeHeight(9.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Indigo200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(54.0),
                           height: getRelativeHeight(11.0),
                           alignment: .topLeading)
                Spacer()
                Text(StringConstants.kLblQuantityArb)
                    .font(FontScheme
                        .kMontserratRomanMedium(size: getRelativeHeight(9.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Indigo200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(66.0),
                           height: getRelativeHeight(11.0),
                           alignment: .topLeading)
            }
            .frame(width: getRelativeWidth(139.0),
                   height: getRelativeHeight(11.0), alignment: .center)
            VStack(spacing: 0) {
                if let sell = orderBook.model?.sell {
                    let slice = sell.first6()
                    ForEach(slice, id: \.id) { order in
                        OrderRow(order: order, isBuy: false, isMainScreen: true, maxOrderVolume: findMaxVolume(for: sell))
                    }
                }
            }
            .frame(width: getRelativeWidth(140.0), alignment: .leading)
            //.padding(.top, getRelativeHeight(8.0))
            Text(StringConstants.kLbl4289799)
                .font(FontScheme
                    .kMontserratSemiBold(size: getRelativeHeight(15.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Teal500)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(73.0),
                       height: getRelativeHeight(19.0), alignment: .topLeading)
                .padding(.top, getRelativeHeight(11.0))
                .padding(.trailing, getRelativeWidth(10.0))
            Text(StringConstants.kLbl4289305)
                .font(FontScheme
                    .kMontserratRegular(size: getRelativeHeight(11.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray400)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(65.0),
                       height: getRelativeHeight(14.0), alignment: .topLeading)
                .padding(.trailing, getRelativeWidth(10.0))
            VStack(alignment: .leading, spacing: 0) {
                if let buy = orderBook.model?.buy {
                    let slice = buy.first6()
                    ForEach(slice, id: \.id) { order in
                        OrderRow(order: order, isBuy: true, isMainScreen: true, maxOrderVolume: findMaxVolume(for: buy))
                    }
                }
            }
            .frame(width: getRelativeWidth(140.0),
                   height: getRelativeHeight(119.0), alignment: .leading)
            //.padding(.top, getRelativeHeight(11.0))
            HStack {
                HStack {
                    Text(StringConstants.kLbl01)
                        .font(FontScheme
                            .kMontserratRomanMedium(size: getRelativeHeight(10.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(11.0),
                               height: getRelativeHeight(13.0),
                               alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(9.0))
                    Image("img_path56665_indigo_200")
                        .resizable()
                        .frame(width: getRelativeWidth(8.0),
                               height: getRelativeHeight(5.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(70.0))
                        .padding(.trailing, getRelativeWidth(12.0))
                }
                .frame(width: getRelativeWidth(112.0),
                       height: getRelativeHeight(20.0), alignment: .bottom)
                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                        bottomLeft: 4.0, bottomRight: 4.0)
                        .stroke(ColorConstants.Bluegray700,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                           bottomLeft: 4.0, bottomRight: 4.0)
                        .fill(Color.clear.opacity(0.7)))
                Spacer()
                Image("img_group48200")
                    .resizable()
                    .frame(width: getRelativeWidth(18.0),
                           height: getRelativeWidth(18.0), alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .background(RoundedCorners(topLeft: 1.0, topRight: 1.0,
                                               bottomLeft: 1.0,
                                               bottomRight: 1.0))
            }
            .frame(width: getRelativeWidth(140.0),
                   height: getRelativeHeight(21.0), alignment: .leading)
            .padding(.top, getRelativeHeight(10.0))
        }
        .onChange(of: ticker.currentPair.id, { oldValue, newValue in
            orderBook.updatePairId(newPairId: ticker.currentPair.id)
        })
        .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(345.0),
               alignment: .center)
    }
}

