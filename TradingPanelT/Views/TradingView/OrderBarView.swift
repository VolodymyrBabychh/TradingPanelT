//
//  OrderBarView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct OrderBarView: View {
    var body: some View {
        HStack {
            HStack {
                Text(StringConstants.kLblOpenOrder1)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(92.0),
                           height: getRelativeHeight(16.0), alignment: .topLeading)
                Text(StringConstants.kLblOrderHistory)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(91.0),
                           height: getRelativeHeight(16.0), alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(19.0))
                Text(StringConstants.kLblFunds)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(42.0),
                           height: getRelativeHeight(16.0), alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(261.0), height: getRelativeHeight(17.0),
                   alignment: .center)
            Spacer()
            Image("img_vector_gray_100_16x15")
                .resizable()
                .frame(width: getRelativeWidth(15.0),
                       height: getRelativeHeight(16.0), alignment: .center)
                .scaledToFit()
                .clipped()
        }
        .frame(width: getRelativeWidth(356.0), height: getRelativeHeight(17.0),
               alignment: .center)
        .padding(.top, getRelativeHeight(36.0))
        .padding(.horizontal, getRelativeWidth(16.0))
        ZStack(alignment: .leading) {
            Divider()
                .frame(width: UIScreen.main.bounds.width,
                       height: getRelativeHeight(1.0), alignment: .topLeading)
                .background(ColorConstants.Bluegray800)
            Image("img_vector11")
                .resizable()
                .frame(width: getRelativeWidth(22.0),
                       height: getRelativeHeight(3.0), alignment: .center)
                .scaledToFit()
                .clipped()
                .padding(.leading, getRelativeWidth(52.0))
                .padding(.trailing, getRelativeWidth(319.0))
        }
        .hideNavigationBar()
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(3.0),
               alignment: .leading)
        .padding(.top, getRelativeHeight(6.0))
        Text(StringConstants.kLblCancelAll)
            .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(12.0)))
            .fontWeight(.medium)
            .foregroundColor(ColorConstants.Gray500)
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(.leading)
            .frame(width: getRelativeWidth(61.0), height: getRelativeHeight(15.0),
                   alignment: .topLeading)
            .padding(.top, getRelativeHeight(10.0))
            .padding(.horizontal, getRelativeWidth(24.0))
    }
}
