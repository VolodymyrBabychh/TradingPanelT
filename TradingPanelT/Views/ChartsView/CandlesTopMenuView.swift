//
//  CandlesTopMenuView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct CandlesTopMenuView: View {
    var body: some View {
        VStack {
            HStack {
                Text(StringConstants.kLblChart)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(38.0),
                           height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                Spacer()
                Text(StringConstants.kLblInfo)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(27.0),
                           height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(81.0),
                   height: getRelativeHeight(16.0), alignment: .leading)
            .padding(.horizontal, getRelativeWidth(16.0))
            ZStack(alignment: .leading) {
                Divider()
                    .frame(width: UIScreen.main.bounds.width,
                           height: getRelativeHeight(1.0),
                           alignment: .topLeading)
                    .background(ColorConstants.Bluegray800)
                Image("img_vector11")
                    .resizable()
                    .frame(width: getRelativeWidth(22.0),
                           height: getRelativeHeight(3.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.leading, getRelativeWidth(24.0))
                    .padding(.trailing, getRelativeWidth(347.0))
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width,
                   height: getRelativeHeight(3.0), alignment: .leading)
            .padding(.top, getRelativeHeight(9.0))
        }
        .frame(width: UIScreen.main.bounds.width,
               height: getRelativeHeight(28.0), alignment: .leading)
    }
}
