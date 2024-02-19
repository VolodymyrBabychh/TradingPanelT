//
//  CandleChartsView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import SwiftUI
import Charts

struct CandleChartsView: View {
    @EnvironmentObject private var ticker: TickerViewModel
    @StateObject var viewModel = CandleViewModel()
    @State private var spacingBetweenElements = 15
    @State private var scrollPosition: Double = 654560943.2866696
    private func getColor(openF: Double, closeF: Double) -> Color {
        let openValue = openF
        let closeValue = closeF
        var foregroundColor = ColorConstants.Teal400
        if openValue > closeValue {
            foregroundColor =  ColorConstants.Red400
        }
        return foregroundColor
    }
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Group {
                        Text(StringConstants.kLblLine)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(26.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, -30)
                        Text(StringConstants.kLbl15m)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(23.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(1.0))
                        Text(StringConstants.kLbl1h)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(13.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(13.0))
                        Text(StringConstants.kLbl4h)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(15.0),
                                   height: getRelativeWidth(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(12.0))
                        Text(StringConstants.kLbl1d)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(13.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(13.0))
                        Text(StringConstants.kLbl1w)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(16.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(12.0))
                        Text(StringConstants.kLblMore)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(32.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(12.0))
                        Image("img_path56665")
                            .resizable()
                            .frame(width: getRelativeWidth(8.0),
                                   height: getRelativeHeight(4.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                    }
                    Group {
                        Text(StringConstants.kLblDepth)
                            .font(FontScheme
                                .kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(39.0),
                                   height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(12.0))
                    }
                }
                .frame(width: getRelativeWidth(276.0),
                       height: getRelativeHeight(16.0), alignment: .leading)
                .padding(.top, getRelativeHeight(18.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                //MARK: Zoom/unzoom imitation
//                .gesture(
//                    DragGesture(minimumDistance: 0)
//                        .onEnded { gesture in
//                            let sensetive = 50
//                            spacingBetweenElements += Int(gesture.translation.width) / sensetive
//                        }
//                )
            }
            //MARK: EXAMPLE OF COMBINED CHART
//            VStack {
//                Chart {
//                    ForEach(viewModel.data, id: \.id) { candle in
//                        RectangleMark(x: .value("Day", candle.time),
//                                      yStart: .value("Low price", candle.lowF),
//                                      yEnd: .value("High price", candle.highF),
//                                      width: 2)
//                        .opacity(0.4)
//                        .foregroundStyle(getColor(openF: candle.openF, closeF: candle.closeF))
//                        
//                        RectangleMark(x: .value("Day", candle.time),
//                                      yStart: .value("Open price", candle.openF),
//                                      yEnd: .value("Close price", candle.closeF),
//                                      width: 12)
//                        .foregroundStyle(getColor(openF: candle.openF, closeF: candle.closeF))
//                        
//                        
//                        BarMark(x: .value("Day", candle.time),
//                                y: .value("Volume", normalizeVolume(candle.volume)),
//                                width: 6)
//                        .foregroundStyle(getColor(openF: candle.openF, closeF: candle.closeF).opacity(0.5))
//                    }
//                }
//                .frame(height: 400)
//                .chartScrollableAxes([.horizontal])
//                .chartXScale(range: self.getRange(), type: .linear)
//                .chartScrollPosition(x: $scrollPosition)
//            }
//            .background(ColorConstants.Gray901)
//            .cornerRadius(12)
//            .padding([.top, .horizontal])
            //MARK: SEPARATLY CHART (But scroll laging)
            VStack {
                Chart {
                    ForEach(viewModel.data, id: \.id) { candle in
                        RectangleMark(x: .value("Day", candle.time),
                                      yStart: .value("Low price", candle.lowF),
                                      yEnd: .value("High price", candle.highF),
                                      width: 2)
                        .opacity(0.4)
                        .foregroundStyle(getColor(openF: candle.openF, closeF: candle.closeF))
                        
                        RectangleMark(x: .value("Day", candle.time),
                                      yStart: .value("Open price", candle.openF),
                                      yEnd: .value("Close price", candle.closeF),
                                      width: 12)
                        .foregroundStyle(getColor(openF: candle.openF, closeF: candle.closeF))
                    }
                }
                .frame(height: 280)
                .frame(width: 360)
                .chartScrollableAxes([.horizontal])
                .chartXScale(range: self.getRange(), type: .log)
                .chartScrollPosition(x: $scrollPosition)
            }
            .frame(width: getRelativeWidth(361.0),
                   height: getRelativeHeight(313.0), alignment: .center)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                       bottomLeft: 12.0, bottomRight: 12.0)
                .fill(ColorConstants.Gray901))
            .padding(.top, getRelativeHeight(10.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            HStack {
                Chart {
                    ForEach(viewModel.data, id: \.id) { candle in
                        BarMark(x: .value("Day", candle.time),
                                y: .value("Population", candle.volume), width: 12)
                        .foregroundStyle(getColor(openF: candle.openF, closeF: candle.closeF))
                    }
                }
                .padding()
                .frame(height: 120)
                .frame(width: 390)
                .chartScrollableAxes([.horizontal])
                .chartXScale(range: self.getRange(), type: .log)
                .chartScrollPosition(x: $scrollPosition)
            }
            .frame(width: getRelativeWidth(361.0),
                   height: getRelativeHeight(116.0), alignment: .center)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                       bottomLeft: 12.0, bottomRight: 12.0)
                .fill(ColorConstants.Gray901))
            .padding(.top, getRelativeHeight(8.0))
            .padding(.horizontal, getRelativeWidth(16.0))
        }
        .background(ColorConstants.Gray900)
        .onAppear {
            viewModel.fetchData(value: ticker.currentPair.name)
        }
    }
    private func normalizeVolume(_ volume: Double) -> Double {
        return volume / 10000000000
    }
    private func getRange() -> ClosedRange<CGFloat> {
        if spacingBetweenElements < 1 {
            return 1...1
        }
        if viewModel.data.count != 0 {
            return 1...CGFloat(viewModel.data.count * spacingBetweenElements)
        } else {
            return 1...1
        }
    }
}
