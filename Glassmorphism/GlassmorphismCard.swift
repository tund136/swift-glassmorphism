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
        }
        .frame(width: width / 1.7, height: 270)
    }
}
