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
                
                Spacer()
                
                // Glassmorphism Card
                ZStack {
                    // Background Balls
                    Circle()
                        .fill(Color("Purple"))
                        .blur(radius: 20)
                        .frame(width: 100, height: 100)
                        .offset(x: 120, y: -80)
                    
                    Circle()
                        .fill(Color("LightBlue"))
                        .blur(radius: 40)
                        .frame(width: 100, height: 100)
                        .offset(x: -120, y: 100)
                    
                    GlassmorphismCard()
                }
                
                Spacer()
                
                Text("Know Everything\nabout the weather.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(getAttributedString())
                    .fontWeight(.semibold)
                    .kerning(1.1)
                    .padding(.top, 10)
                
                // Button
                Button(action: {
                    
                }, label: {
                    Text("Get Started")
                        .font(.title3)
                        .bold()
                        .padding(.vertical, 22)
                        .frame(maxWidth: .infinity)
                        .background(
                            .linearGradient(
                                .init(
                                    colors: [
                                        Color("Button11"),
                                        Color("Button12")
                                    ]
                                ),
                                startPoint: .leading,
                                endPoint: .trailing
                            ),
                            in: RoundedRectangle(cornerRadius: 20)
                        )
                })
                    .padding(.horizontal, 50)
                    .padding(.vertical, 20)
                
                Button(action: {
                    
                }, label: {
                    Text("Already have an account?")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                })
                    .padding(.bottom)
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
        }
    }
    
    // Going to use AttributesString from iOS 15
    func getAttributedString() -> AttributedString {
        var attStr = AttributedString("Start now and learn more about\nlocal weather instantly.")
        
        attStr.foregroundColor = .gray
        
        // Converting only 'local weather'
        if let range = attStr.range(of: "local weather") {
            // Changing into white
            attStr[range].foregroundColor = .white
        }
        
        return attStr
    }
}

