//
//  Home.swift
//  Glassmorphism
//
//  Created by Danh Tu on 05/10/2021.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG1"), Color("BG2")],
                startPoint: .top,
                endPoint: .bottom
            )
                .ignoresSafeArea()
            
        }
    }
}

