//
//  BottomNavigator.swift
//  Ui Design
//
//  Created by Servon Lewis on 5/30/22.
//

import SwiftUI

struct BottomNavigator: View {
    var body: some View {
        TabView {
            navItem("Home", sysImage: "house", content: HomeView())
            navItem("Home", sysImage: "bitcoinsign.circle", content: HomeView())
            navItem("Settings", sysImage: "shield", content: HomeView())
            navItem("Settings", sysImage: "gear", content: HomeView())
        }
    }
    
    @ViewBuilder
    private func navItem<T: View>(_ label: String, sysImage: String, content: T) -> some View {
        content
            .tabItem {
                Image(systemName: sysImage)
                Text(label)
            }
    }
}

struct BottomNavigator_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigator()
    }
}
