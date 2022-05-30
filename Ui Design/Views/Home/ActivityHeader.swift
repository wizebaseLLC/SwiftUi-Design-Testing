//
//  ActivityHeader.swift
//  Ui Design
//
//  Created by Servon Lewis on 5/30/22.
//

import SwiftUI

struct ActivityHeader: View {
    var body: some View {
        HStack{
            Text("Activity")
                .font(.title2)
            Spacer()
            Text("Portfolio")
                .font(.system(size: 14))
                .foregroundColor(.secondary)
            Image(systemName: "chevron.down")
                .foregroundColor(.secondary)
                .font(.system(size: 14))
        }
        .padding([.leading,.trailing])
    }
}

struct ActivityHeader_Previews: PreviewProvider {
    static var previews: some View {
        ActivityHeader()
    }
}
