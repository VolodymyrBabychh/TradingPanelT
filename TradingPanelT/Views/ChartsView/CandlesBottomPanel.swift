//
//  CandlesBottomPanel.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct CandlesBottomPanel: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Image("img_group100000347")
                    .resizable()
                    .frame(width: getRelativeWidth(17.0),
                           height: getRelativeHeight(20.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.horizontal, getRelativeWidth(4.0))
                Text(StringConstants.kLblAlert)
                    .font(FontScheme
                        .kMontserratRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(25.0),
                           height: getRelativeHeight(13.0),
                           alignment: .bottomLeading)
            }
            .frame(width: getRelativeWidth(25.0),
                   height: getRelativeHeight(36.0), alignment: .top)
            .padding(.leading, getRelativeWidth(26.0))
            Text(StringConstants.kLblMargin)
                .font(FontScheme
                    .kMontserratRegular(size: getRelativeHeight(10.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.WhiteA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(35.0),
                       height: getRelativeHeight(23.0),
                       alignment: .bottomLeading)
                .padding(.leading, getRelativeWidth(19.0))
            Divider()
                .frame(width: getRelativeWidth(1.0),
                       height: getRelativeHeight(36.0), alignment: .top)
                .background(ColorConstants.Bluegray800)
                .padding(.leading, getRelativeWidth(12.0))
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLblBuy)
                        .font(FontScheme
                            .kMontserratSemiBold(size: getRelativeHeight(15.0)))
                        .fontWeight(.semibold)
                        .padding(.horizontal, getRelativeWidth(30.0))
                        .padding(.vertical, getRelativeHeight(8.0))
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(118.0),
                               height: getRelativeHeight(36.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 18.0,
                                                   topRight: 18.0,
                                                   bottomLeft: 18.0,
                                                   bottomRight: 18.0)
                            .fill(ColorConstants.Teal500))
                        .padding(.leading, getRelativeWidth(1.0))
                }
            })
            .frame(width: getRelativeWidth(95.0),
                   height: getRelativeHeight(36.0), alignment: .center)
            .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                       bottomLeft: 18.0,
                                       bottomRight: 18.0)
                .fill(ColorConstants.Teal500))
            .padding(.leading, getRelativeWidth(11.0))
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLblSell)
                        .font(FontScheme
                            .kMontserratSemiBold(size: getRelativeHeight(15.0)))
                        .fontWeight(.semibold)
                        .padding(.horizontal, getRelativeWidth(30.0))
                        .padding(.vertical, getRelativeHeight(8.0))
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(118.0),
                               height: getRelativeHeight(36.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 18.0,
                                                   topRight: 18.0,
                                                   bottomLeft: 18.0,
                                                   bottomRight: 18.0)
                            .fill(ColorConstants.Red400))
                        .padding(.leading, getRelativeWidth(1.0))
                        .padding(.trailing, getRelativeWidth(1.0))
                }
            })
            .frame(width: getRelativeWidth(118.0),
                   height: getRelativeHeight(36.0), alignment: .center)
            .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                       bottomLeft: 18.0,
                                       bottomRight: 18.0)
                .fill(ColorConstants.Red400))
            .padding(.leading, getRelativeWidth(12.0))
            .padding(.trailing, getRelativeWidth(15.0))
        }
        .frame(width: UIScreen.main.bounds.width,
               height: getRelativeHeight(58.0),
               alignment: .bottomLeading)
        .background(ColorConstants.Gray901)
        .padding(.top, getRelativeHeight(370.85))
    }
}
