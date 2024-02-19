//
//  Row24hhighCell.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct Row24hhighCell: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLbl24hHigh)
                    .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(9.5)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(11.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kLbl4378718)
                    .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(47.0), height: getRelativeHeight(13.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(47.0), height: getRelativeHeight(25.0),
                   alignment: .leading)
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLbl24hLow)
                    .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(9.5)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kLbl4242109)
                    .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(26.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(47.0))
        }
        .frame(width: getRelativeWidth(145.0), alignment: .leading)
        .hideNavigationBar()
    }
}
