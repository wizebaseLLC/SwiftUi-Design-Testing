//
//  ActivityCardsView.swift
//  Ui Design
//
//  Created by Servon Lewis on 5/30/22.
//

import SwiftUI

struct ActivityCardsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 12) {
                CardView(position: .bottom)
                CardView(position: .top)
                CardView(position: .bottom)
                CardView(position: .top)
                
            }
        }
    }
}

struct ActivityCardsView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityCardsView()
    }
}
