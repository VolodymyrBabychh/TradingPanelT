//
//  TopPanelView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct TopMenuView: View {
    var body: some View {
        HStack {
            HStack {
                Text(StringConstants.kLblSpot)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(15.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(36.0),
                           height: getRelativeHeight(19.0), alignment: .topLeading)
                Spacer()
                Text(StringConstants.kLblMargin)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(15.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(55.0),
                           height: getRelativeHeight(19.0), alignment: .topLeading)
                Text(StringConstants.kLblConvert)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(15.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(62.0),
                           height: getRelativeHeight(19.0), alignment: .topLeading)
                Spacer()
            }
            .frame(width: getRelativeWidth(185.0), height: getRelativeHeight(20.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(16.0))
            .background(ColorConstants.Gray900)
            Spacer()
        }
    }
}
