//
//  CanldesItemMenuView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct CanldesItemMenuView: View {
    var body: some View {
        VStack {
            HStack {
                Text(StringConstants.kLblOrderBook)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(78.0),
                           height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                Spacer()
                Text(StringConstants.kLblRecentTrading)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(101.0),
                           height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(195.0),
                   height: getRelativeHeight(17.0), alignment: .leading)
            .padding(.top, getRelativeHeight(24.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            ZStack(alignment: .leading) {
                Divider()
                    .frame(width: getRelativeWidth(361.0),
                           height: getRelativeHeight(1.0),
                           alignment: .topLeading)
                    .background(ColorConstants.Bluegray900)
                Image("img_vector9")
                    .resizable()
                    .frame(width: getRelativeWidth(49.0),
                           height: getRelativeHeight(3.0), alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.leading, getRelativeWidth(14.0))
                    .padding(.trailing, getRelativeWidth(298.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(361.0),
                   height: getRelativeHeight(3.0), alignment: .center)
            .padding(.top, getRelativeHeight(8.0))
            .padding(.horizontal, getRelativeWidth(16.0))
        }
    }
}
