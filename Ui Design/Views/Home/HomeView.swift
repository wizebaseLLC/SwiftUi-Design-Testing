//
//  HomeView.swift
//  Ui Design
//
//  Created by Servon Lewis on 5/30/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    BalanceView()
                    ActivityHeader()
                    ActivityCardsView()
                    Text("Crypto Asset")
                        .font(.title2)
                        .padding(.leading)
                    
                        ForEach(cryptoAssetTestData) { asset in
                            
                            let isUp: Bool = asset.trendingDirection == TrendingDirection.up
                            
                            HStack(alignment: .center, spacing: 12) {
                                Image(systemName: asset.systemImage)
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                                    .padding(4)
                                    .background(.white, in: RoundedRectangle(cornerRadius: 6, style: .continuous))
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(asset.title)
                                    Text(asset.subTitle)
                                        .font(.caption).foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                VStack(alignment: .trailing, spacing: 4) {
                                    Text(asset.currentAmount)
                                    
                                    HStack(alignment: .center, spacing: 4) {
                                        Image(systemName: isUp ? "arrowtriangle.up" : "arrowtriangle.down")
                                            .foregroundColor(isUp ? .green : .red)
                                            .font(.system(size: 10))
                                        Text(asset.trendingPercent)
                                            .font(.caption)
                                        .foregroundColor(isUp ? .green : .red)
                                    }
                                }
                                    
                            }
                    }
                        .padding([.leading, .trailing])
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    ToolbarAvatar()
                }
                ToolbarItem {
                    Button {
                        print("hi")
                    } label: {
                        Image(systemName: "bell")
                            .foregroundColor(.secondary)
                            .padding(8)
                            .background(.ultraThinMaterial, in: Circle())
                    }
                }
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
