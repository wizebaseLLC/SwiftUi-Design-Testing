//
//  Card.swift
//  Ui Design
//
//  Created by Servon Lewis on 5/30/22.
//

import SwiftUI

enum CardCirclePosition {
    case bottom, top
}

struct CardView: View {
    
    let position: CardCirclePosition
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            circle
            VStack {
                menu
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(maxHeight: .infinity, alignment: .top)
            .frame(width: 200, height: 230)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 29, style: .continuous))
            .shadow(
                color: .black.opacity(0.3),
                radius: 10,
                x: 0,
                y: 10
            )
            
        }
        
    }
    
    /// Creates the circle blob
    var circle: some View {
        Circle().fill(Color(position == CardCirclePosition.bottom ? "Secondary" : "Primary"))
            .blur(radius: 10)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            .frame(width: 200, height: 200, alignment: .bottomLeading)
            .offset(
                x: position == CardCirclePosition.bottom ? -65 : 65 ,
                y: position == CardCirclePosition.bottom ? 65: -65
            )
            .mask(RoundedRectangle(cornerRadius: 29, style: .continuous))
    }
    
    /// Creates the menu items
    var menu: some View {
        Menu {
            Button("Duplicate", action: {})
            Button("Rename", action: {})
            Button("Delete…", action: {})
            Menu("Copy") {
                Button("Copy", action: {})
                Button("Copy Formatted", action: {})
                Button("Copy Library Path", action: {})
            }
        } label: {
            HStack(alignment: .center, spacing: 12){
                Image(systemName: position == CardCirclePosition.bottom ? "bitcoinsign.circle" : "lirasign.circle")
                    .foregroundColor(.black)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 6, style: .continuous).fill(Color(position == CardCirclePosition.bottom ? "Secondary" : "Primary")))
                Text(position == CardCirclePosition.bottom ? "BTC" : "ETH")
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
                Image(systemName: "chevron.down")
                    .foregroundColor(Color(position == CardCirclePosition.bottom ? "Secondary" : "Primary"))
                    .font(.system(size: 14))
                
            }
            
        }
        .padding()
        .menuStyle(RedBorderMenuStyle())
        .shadow(
            color: Color(position == CardCirclePosition.bottom ? "Secondary" : "Primary").opacity(0.3),
            radius: 10,
            x: 0,
            y: 10
        )
    }
}

struct RedBorderMenuStyle: MenuStyle {
    func makeBody(configuration: Configuration) -> some View {
        Menu(configuration)
            .padding(8)
            .background(.background, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(position: .top)
            .preferredColorScheme(.dark)
    }
}
