//
//  LoadingView.swift
//  TradingPanel
//
//  Created by Volodymyr Babych on 18.02.2024.
//

import Foundation
import SwiftUI

struct LoadingView: View {
    let error: Error?
    var body: some View {
        if let error {
            Text("error: \(error.localizedDescription)")
        } else {
            Text("Loading...")
        }
    }
}
