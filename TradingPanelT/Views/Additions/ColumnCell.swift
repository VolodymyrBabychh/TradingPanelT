//
//  ColumnCell.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct ColumnCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(StringConstants.kLbl4289799)
                .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Red400)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(14.0),
                       alignment: .leading)
            Text(StringConstants.kLbl4289799)
                .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Red400)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(14.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(7.0))
            Text(StringConstants.kLbl4289799)
                .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Red400)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(14.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(7.0))
            Text(StringConstants.kLbl4289799)
                .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Red400)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(14.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(7.0))
            Text(StringConstants.kLbl4289799)
                .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Red400)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(14.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(7.0))
            Text(StringConstants.kLbl4289799)
                .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Red400)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(14.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(7.0))
        }
        .frame(width: getRelativeWidth(50.0), alignment: .leading)
        .hideNavigationBar()
    }
}

