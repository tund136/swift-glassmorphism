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
            
            // Gloss Background
            GeometryReader { proxy in
                let size = proxy.size
                
                // Slighty Darkening
                Color.black
                    .opacity(0.7)
                    .blur(radius: 200)
                    .ignoresSafeArea()
                
                Circle()
                    .fill(Color("Purple"))
                    .padding(50)
                    .blur(radius: 120)
                // Moving top
                    .offset(x: -size.width / 1.8, y: -size.height / 5)
                
                Circle()
                    .fill(Color("LightBlue"))
                    .padding(50)
                    .blur(radius: 150)
                // Moving top
                    .offset(x: size.width / 1.8, y: -size.height / 2)
                
                Circle()
                    .fill(Color("LightBlue"))
                    .padding(50)
                    .blur(radius: 90)
                // Moving bottom
                    .offset(x: size.width / 1.8, y: size.height / 2)
                
                // Adding Purple on both bottom ends
                Circle()
                    .fill(Color("Purple"))
                    .padding(100)
                    .blur(radius: 110)
                // Moving bottom
                    .offset(x: size.width / 1.8, y: size.height / 2)
                
                Circle()
                    .fill(Color("Purple"))
                    .padding(100)
                    .blur(radius: 110)
                // Moving bottom
                    .offset(x: -size.width / 1.8, y: size.height / 2)
            }
            
            // Content
            VStack {
                Text("Know Everything\nabout the weather.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Start now and learn more about\nlocal weather instantly.")
                    .padding(.top)
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
        }
    }
}

