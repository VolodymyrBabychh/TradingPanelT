//
//  CandlesTopDetailView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct CandlesTopDetailView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLbl428979)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(26.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Teal500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(110.0),
                           height: getRelativeHeight(32.0),
                           alignment: .topLeading)
                    .padding(.trailing)
                HStack {
                    Spacer()
                    Text(StringConstants.kLbl4289305)
                        .font(FontScheme
                            .kMontserratRomanMedium(size: getRelativeHeight(13.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(78.0),
                               height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                    Spacer()
                    Text(StringConstants.kLbl244)
                        .font(FontScheme
                            .kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Teal500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(39.0),
                               height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                    Spacer()
                }
                .frame(width: getRelativeWidth(121.0),
                       height: getRelativeHeight(16.0), alignment: .leading)
                .padding(.top, getRelativeHeight(7.0))
            }
            .frame(width: getRelativeWidth(121.0),
                   height: getRelativeHeight(55.0), alignment: .center)
            Spacer()
            VStack(spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack {
                        ForEach(0 ... 1, id: \.self) { index in
                            Row24hhighCell()
                        }
                    }
                }
            }
            .frame(width: getRelativeWidth(180.0), alignment: .center)
        }
        .frame(width: getRelativeWidth(362.0),
               height: getRelativeHeight(66.0), alignment: .center)
        .padding(.top, getRelativeHeight(12.0))
        .padding(.horizontal, getRelativeWidth(16.0))
    }
}
