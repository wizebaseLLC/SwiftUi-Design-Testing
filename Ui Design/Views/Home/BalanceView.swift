//
//  BalanceView.swift
//  Ui Design
//
//  Created by Servon Lewis on 5/30/22.
//

import SwiftUI

struct BalanceView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 8) {
            Text("Total Balance")
                .foregroundColor(.secondary)
            
            Text("$125,098.36")
                .font(.largeTitle).fontWeight(.bold)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
    }
}
