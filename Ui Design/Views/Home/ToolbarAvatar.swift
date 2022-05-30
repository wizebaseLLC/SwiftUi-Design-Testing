//
//  ToolbarAvatar.swift
//  Ui Design
//
//  Created by Servon Lewis on 5/30/22.
//

import SwiftUI

struct ToolbarAvatar: View {
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            avatar
            name
        }
        
    }
    var name: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Servon Lewis")
            Text("@Swerv")
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
    var avatar: some View {
        AsyncImage(url: URL(string: "https://variety.com/wp-content/uploads/2020/12/Dwayne_Johnson.png?w=970")) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
            
        } placeholder: {
            ProgressView()
        }
        .frame(width: 60, height: 60)
        .background(
            .ultraThinMaterial,
            in:
                RoundedRectangle(cornerRadius: 18, style: .continuous)
        )
        .cornerRadius(40)
    }
}

struct ToolbarAvatar_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarAvatar()
    }
}
