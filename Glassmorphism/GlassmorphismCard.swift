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
            
            // Shadow
                .shadow(color: .black.opacity(0.1), radius: 5, x: -5, y: -5)
                .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
            
            // Content
            VStack {
                Image(systemName: "sun.max")
                    .font(.system(size: 75, weight: .thin))
                
                Text("18")
                    .font(.system(size: 85, weight: .bold))
                    .padding(.top)
                    .overlay(
                        Text("°C")
                            .font(.title2)
                            .foregroundColor(.white.opacity(0.7))
                            .offset(x: 15, y: 20)
                        , alignment: .topTrailing
                    )
                
                Text("Cracow, Poland")
                    .font(.title3)
                    .foregroundColor(.white.opacity(0.4))
            }
        }
        .frame(width: width / 1.7, height: 270)
    }
}
