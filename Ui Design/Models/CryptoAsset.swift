//
//  CryptoAsset.swift
//  Ui Design
//
//  Created by Servon Lewis on 5/30/22.
//

import SwiftUI

struct CryptoAsset: Identifiable {
    let id = UUID()
    let systemImage: String
    let title: String
    let subTitle: String
    let currentAmount: String
    let trendingDirection: TrendingDirection
    let trendingPercent: String
}

enum TrendingDirection {
    case up, down
}

let cryptoAssetTestData = [
    CryptoAsset(systemImage: "bitcoinsign.circle", title: "Bitcoin", subTitle: "3.9 BTC", currentAmount: "$200,001", trendingDirection: TrendingDirection.down, trendingPercent: "4.73%"),
    CryptoAsset(systemImage: "lirasign.circle", title: "Ethereum", subTitle: "1.7 ETH", currentAmount: "$3,267,418", trendingDirection: TrendingDirection.up, trendingPercent: "1.63%"),
    CryptoAsset(systemImage: "bitcoinsign.circle", title: "Cardano", subTitle: "227 ADA", currentAmount: "$20,500", trendingDirection: TrendingDirection.up, trendingPercent: "50.23%"),
    CryptoAsset(systemImage: "lirasign.circle", title: "Polkadot", subTitle: "971.2 DOT", currentAmount: "$80,050", trendingDirection: TrendingDirection.down, trendingPercent: "22.73%"),
]
