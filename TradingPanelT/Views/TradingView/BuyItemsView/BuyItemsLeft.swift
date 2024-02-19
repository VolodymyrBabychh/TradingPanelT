//
//  BuyItemsLeft.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI

struct BuyItemsLeft: View {
    @EnvironmentObject private var ticker: TickerViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Spacer()
            HStack {
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblBuy)
                            .font(FontScheme
                                .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.semibold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(6.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(106.0),
                                   height: getRelativeHeight(28.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 4.0,
                                                       topRight: 4.0,
                                                       bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(ColorConstants.Teal500))
                        
                    }
                })
                Spacer()
                Text(StringConstants.kLblSell)
                    .font(FontScheme
                        .kMontserratSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Indigo200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(22.0),
                           height: getRelativeHeight(15.0),
                           alignment: .topLeading)
                    .padding(.vertical, getRelativeHeight(6.0))
                    .padding(.trailing, getRelativeWidth(38.0))
            }
            .frame(width: getRelativeWidth(205.0),
                   height: getRelativeHeight(28.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                       bottomLeft: 4.0, bottomRight: 4.0)
                    .fill(ColorConstants.Gray901))
            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                       bottomLeft: 4.0, bottomRight: 4.0)
                    .fill(ColorConstants.Teal500))
            Spacer()
            HStack {
                Image("img_info")
                    .padding()
                Spacer()
                Text("Limit")
                    .font(FontScheme
                        .kMontserratRomanMedium(size: getRelativeHeight(13.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(46.0),
                           height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(11.0))
                    .padding(.bottom, getRelativeHeight(8.0))
                    .padding(.leading, getRelativeWidth(9.0))
                Spacer()
                Image("img_path56665_indigo_200")
                    .padding()
            }
            .frame(width: getRelativeWidth(205.0),
                   height: getRelativeHeight(36.0), alignment: .leading)
            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                    bottomLeft: 4.0, bottomRight: 4.0)
                    .stroke(ColorConstants.Bluegray700,
                            lineWidth: 1))
            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                       bottomLeft: 4.0,
                                       bottomRight: 4.0)
                    .fill(Color.clear.opacity(0.7)))
            ZStack(alignment: .leading) {
                Text(StringConstants.kLbl121Usd)
                    .font(FontScheme
                        .kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Indigo200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(51.0),
                           height: getRelativeHeight(14.0),
                           alignment: .topLeading)
                    .padding(.trailing, getRelativeWidth(154.0))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(StringConstants.kLbl427191)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(13.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray100)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(46.0),
                                   height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.bottom, getRelativeHeight(8.0))
                            .padding(.leading, getRelativeWidth(9.0))
                        Spacer()
                        HStack {
                            Image("img_vector_gray_300_1x8")
                                .resizable()
                                .frame(width: getRelativeWidth(8.0),
                                       height: getRelativeHeight(1.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Image("img_vector_gray_300")
                                .resizable()
                                .frame(width: getRelativeWidth(8.0),
                                       height: getRelativeWidth(8.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(18.0))
                        }
                        .frame(width: getRelativeWidth(34.0),
                               height: getRelativeHeight(8.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(14.0))
                        .padding(.trailing, getRelativeWidth(18.0))
                    }
                    .frame(width: getRelativeWidth(205.0),
                           height: getRelativeHeight(36.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                            bottomLeft: 4.0, bottomRight: 4.0)
                            .stroke(ColorConstants.Bluegray700,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                               bottomLeft: 4.0,
                                               bottomRight: 4.0)
                            .fill(Color.clear.opacity(0.7)))
                    HStack {
                        Text(StringConstants.kLblAmount)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(13.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(55.0),
                                   height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                            .padding(.leading, getRelativeWidth(9.0))
                        Spacer()
                        Text(ticker.currentPair.main.iso3)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(13.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(26.0),
                                   height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                            .padding(.trailing, getRelativeWidth(19.0))
                    }
                    .frame(width: getRelativeWidth(205.0),
                           height: getRelativeHeight(36.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                            bottomLeft: 4.0, bottomRight: 4.0)
                            .stroke(ColorConstants.Bluegray700,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                               bottomLeft: 4.0,
                                               bottomRight: 4.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(32.0))
                }
                .frame(width: getRelativeWidth(205.0),
                       height: getRelativeHeight(104.0), alignment: .leading)
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(205.0),
                   height: getRelativeHeight(104.0), alignment: .leading)
            .padding(.top, getRelativeHeight(12.0))
            ZStack(alignment: .leading) {
                Image("img_group100000345")
                    .resizable()
                    .frame(width: getRelativeWidth(183.0),
                           height: getRelativeHeight(1.0), alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.bottom, getRelativeHeight(21.0))
                    .padding(.leading, getRelativeWidth(13.5))
                    .padding(.trailing, getRelativeWidth(8.5))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(14.0),
                                   height: getRelativeWidth(14.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                    bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Gray100,
                                            lineWidth: 2))
                            .background(RoundedCorners(topLeft: 7.0,
                                                       topRight: 7.0,
                                                       bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(Color.clear.opacity(0.7)))
                        Spacer()
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(9.0),
                                   height: getRelativeWidth(9.0),
                                   alignment: .top)
                            .overlay(RoundedCorners(topLeft: 4.5, topRight: 4.5,
                                                    bottomLeft: 4.5,
                                                    bottomRight: 4.5)
                                    .stroke(ColorConstants.Bluegray700,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.5,
                                                       topRight: 4.5,
                                                       bottomLeft: 4.5,
                                                       bottomRight: 4.5)
                                    .fill(Color.clear.opacity(0.7)))
                        Spacer()
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(9.0),
                                   height: getRelativeWidth(9.0),
                                   alignment: .top)
                            .overlay(RoundedCorners(topLeft: 4.5, topRight: 4.5,
                                                    bottomLeft: 4.5,
                                                    bottomRight: 4.5)
                                    .stroke(ColorConstants.Bluegray700,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.5,
                                                       topRight: 4.5,
                                                       bottomLeft: 4.5,
                                                       bottomRight: 4.5)
                                    .fill(Color.clear.opacity(0.7)))
                        Spacer()
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(9.0),
                                   height: getRelativeWidth(9.0),
                                   alignment: .top)
                            .overlay(RoundedCorners(topLeft: 4.5, topRight: 4.5,
                                                    bottomLeft: 4.5,
                                                    bottomRight: 4.5)
                                    .stroke(ColorConstants.Bluegray700,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.5,
                                                       topRight: 4.5,
                                                       bottomLeft: 4.5,
                                                       bottomRight: 4.5)
                                    .fill(Color.clear.opacity(0.7)))
                        Spacer()
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(9.0),
                                   height: getRelativeWidth(9.0),
                                   alignment: .top)
                            .overlay(RoundedCorners(topLeft: 4.5, topRight: 4.5,
                                                    bottomLeft: 4.5,
                                                    bottomRight: 4.5)
                                    .stroke(ColorConstants.Bluegray700,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.5,
                                                       topRight: 4.5,
                                                       bottomLeft: 4.5,
                                                       bottomRight: 4.5)
                                    .fill(Color.clear.opacity(0.7)))
                    }
                    .frame(width: getRelativeWidth(205.0),
                           height: getRelativeHeight(14.0), alignment: .leading)
                    HStack {
                        Text(StringConstants.kLbl0)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(10.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(16.0),
                                   height: getRelativeHeight(13.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl25)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(10.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(20.0),
                                   height: getRelativeHeight(13.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl50)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(10.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(21.0),
                                   height: getRelativeHeight(13.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl75)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(10.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(20.0),
                                   height: getRelativeHeight(13.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl100)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(10.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(26.0),
                                   height: getRelativeHeight(13.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(205.0),
                           height: getRelativeHeight(13.0), alignment: .leading)
                }
                .frame(width: getRelativeWidth(205.0),
                       height: getRelativeHeight(29.0), alignment: .leading)
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(205.0),
                   height: getRelativeHeight(29.0), alignment: .leading)
            .padding(.top, getRelativeHeight(9.0))
            HStack {
                Text(StringConstants.kLblTotal)
                    .font(FontScheme
                        .kMontserratRomanMedium(size: getRelativeHeight(13.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(32.0),
                           height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(10.0))
                    .padding(.bottom, getRelativeHeight(9.0))
                    .padding(.leading, getRelativeWidth(9.0))
                Spacer()
                Text(ticker.currentPair.second.iso3)
                    .font(FontScheme
                        .kMontserratRomanMedium(size: getRelativeHeight(13.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(36.0),
                           height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(10.0))
                    .padding(.bottom, getRelativeHeight(9.0))
                    .padding(.trailing, getRelativeWidth(19.0))
            }
            .frame(width: getRelativeWidth(205.0),
                   height: getRelativeHeight(36.0), alignment: .leading)
            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                    bottomLeft: 4.0,
                                    bottomRight: 4.0)
                    .stroke(ColorConstants.Bluegray700,
                            lineWidth: 1))
            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                       bottomLeft: 4.0, bottomRight: 4.0)
                    .fill(Color.clear.opacity(0.7)))
            .padding(.top, getRelativeHeight(12.0))
            HStack {
                Text(StringConstants.kLblMaxBuy)
                    .font(FontScheme
                        .kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Indigo200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(51.0),
                           height: getRelativeHeight(14.0),
                           alignment: .topLeading)
                Spacer()
                Text(StringConstants.kLbl000 + " " + ticker.currentPair.main.iso3)
                    .font(FontScheme
                        .kMontserratRomanMedium(size: getRelativeHeight(11.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(50.0),
                           height: getRelativeHeight(14.0),
                           alignment: .topLeading)
            }
            .frame(width: getRelativeWidth(205.0),
                   height: getRelativeHeight(15.0), alignment: .leading)
            .padding(.top, getRelativeHeight(7.0))
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLblBuy)
                        .font(FontScheme
                            .kMontserratSemiBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.semibold)
                        .padding(.horizontal, getRelativeWidth(30.0))
                        .padding(.vertical, getRelativeHeight(9.0))
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(205.0),
                               height: getRelativeHeight(36.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                   bottomLeft: 4.0,
                                                   bottomRight: 4.0)
                                .fill(ColorConstants.Teal500))
                        .padding(.top, getRelativeHeight(17.0))
                }
            })
            .frame(width: getRelativeWidth(205.0),
                   height: getRelativeHeight(36.0), alignment: .center)
            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                       bottomLeft: 4.0, bottomRight: 4.0)
                    .fill(ColorConstants.Teal500))
            .padding(.top, getRelativeHeight(1.0))
        }
        .frame(width: getRelativeWidth(205.0), height: getRelativeHeight(346.0),
               alignment: .center)
    }
}

