//
//  GlassmorphismCard.swift
//  Glassmorphism
//
//  Created by Danh Tu on 05/10/2021.
//

import SwiftUI

struct GlassmorphismCard: View {
    var body: some View {
        let width = UIScreen.main.bounds.width
        
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .opacity(0.1)
                .background(
                    Color.white
                        .opacity(0.08)
                        .blur(radius: 10)
                )
            
            // Strokes
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(
                            .linearGradient(.init(colors: [
                                Color("Purple"),
                                Color("Purle").opacity(0.5),
                                .clear,
                                .clear,
                                Color("LightBlue")
                            ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            , lineWidth: 2.5
                        )
                        .padding(2)
                )
        }
        .frame(width: width / 1.7, height: 270)
    }
}
