//
//  OrderItemsView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct OrderItemsView:View {
    var body: some View {
        VStack {
            HStack {
                Text(StringConstants.kLblBtcUsdt)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(13.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(69.0),
                           height: getRelativeHeight(16.0), alignment: .topLeading)
                Spacer()
                Text(StringConstants.kMsg080911290)
                    .font(FontScheme.kMontserratRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(89.0),
                           height: getRelativeHeight(15.0), alignment: .topLeading)
            }
            .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(16.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(11.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            HStack {
                Text(StringConstants.kLblLimitSell)
                    .font(FontScheme.kMontserratSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Red400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(57.0),
                           height: getRelativeHeight(15.0), alignment: .topLeading)
                Spacer()
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLbl43)
                        .font(FontScheme
                            .kMontserratSemiBold(size: getRelativeHeight(11.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(24.0),
                               height: getRelativeHeight(14.0), alignment: .topLeading)
                        .padding(.trailing)
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 1.5)
                            .fill(ColorConstants.Indigo100)
                            .frame(width: getRelativeWidth(257.0), height: getRelativeHeight(3.0))
                        RoundedRectangle(cornerRadius: 1.5)
                            .fill(ColorConstants.Indigo100) // Same color as background for 'empty'
                            .frame(width: getRelativeWidth(257.0), height: getRelativeHeight(3.0))
                        RoundedRectangle(cornerRadius: 1.5)
                            .fill(ColorConstants.Red400)
                            .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(3.0))
                    }
                }
                .frame(width: getRelativeWidth(257.0), height: getRelativeHeight(18.0),
                       alignment: .center)
            }
            .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(18.0),
                   alignment: .center)
            .padding(.horizontal, getRelativeWidth(16.0))
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(StringConstants.kLblAmount)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(51.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl18001800)
                            .font(FontScheme
                                .kBritanicaRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray100)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(72.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(159.0),
                           height: getRelativeHeight(15.0), alignment: .leading)
                    HStack {
                        Text(StringConstants.kLblPrice)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(31.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                        HStack {
                            Text(StringConstants.kLbl6000)
                                .font(FontScheme
                                    .kMontserratRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray100)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(34.0),
                                       height: getRelativeHeight(15.0),
                                       alignment: .topLeading)
                            Image("img_group100000237")
                                .resizable()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeWidth(14.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(6.0))
                        }
                        .frame(width: getRelativeWidth(54.0),
                               height: getRelativeHeight(15.0), alignment: .center)
                        .padding(.leading, getRelativeWidth(56.0))
                    }
                    .frame(width: getRelativeWidth(141.0),
                           height: getRelativeHeight(15.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        Text(StringConstants.kLblTotal)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(29.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl1085045)
                            .font(FontScheme
                                .kMontserratRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray100)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(55.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(57.0))
                    }
                    .frame(width: getRelativeWidth(142.0),
                           height: getRelativeHeight(16.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(159.0), height: getRelativeHeight(58.0),
                       alignment: .center)
                Spacer()
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblCancel)
                            .font(FontScheme
                                .kMontserratRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .padding(.horizontal, getRelativeWidth(8.0))
                            .padding(.vertical, getRelativeHeight(4.0))
                            .foregroundColor(ColorConstants.Gray100)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(57.0),
                                   height: getRelativeHeight(23.0), alignment: .center)
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                       bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                .fill(ColorConstants.Bluegray900))
                            .padding(.vertical, getRelativeHeight(33.0))
                    }
                })
                .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(23.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                           bottomRight: 4.0)
                    .fill(ColorConstants.Bluegray900))
                .padding(.vertical, getRelativeHeight(33.0))
            }
            .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(58.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(6.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            Divider()
                .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(1.0),
                       alignment: .center)
                .background(ColorConstants.Bluegray800)
                .padding(.top, getRelativeHeight(28.0))
                .padding(.horizontal, getRelativeWidth(16.0))
        }
    }
}

