//
//  Utils.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import UIKit
import SwiftUI
func getRelativeHeight(_ size: CGFloat) -> CGFloat {
    return (size * (CGFloat(UIScreen.main.bounds.height) / 852.0)) * 0.97
}

func getRelativeWidth(_ size: CGFloat) -> CGFloat {
    return size * (CGFloat(UIScreen.main.bounds.width) / 393.0)
}

func getRelativeFontSize(_ size: CGFloat) -> CGFloat {
    return size * (CGFloat(UIScreen.main.bounds.width) / 393.0)
}

func findMaxVolume(for order: [BuyElement]) -> Int {
    return order.map { $0.volume }.max() ?? 0
}

extension View {
    func hideNavigationBar() -> some View {
        self
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())
    }

    @ViewBuilder func visibility(_ visibility: ViewVisibility) -> some View {
        if visibility != .gone {
            if visibility == .visible {
                self
            } else {
                hidden()
            }
        }
    }
}

enum ViewVisibility: CaseIterable {
    case visible,
         invisible,
         gone 
}

extension Array {
    func first6() -> ArraySlice<Element> {
        return prefix(upTo: 6)
    }
}
