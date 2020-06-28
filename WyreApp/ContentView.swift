//
//  ContentView.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/27/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

var wyrePurple: Color = Color(red: 112, green: 100, blue: 255)

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                
            //This is the Content in the main view
                Rectangle()
                    .fill(Color.purple)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: geometry.size.height/3)
                    
                HStack {
                    List {
                        Text("Content")
                            .font(.custom("Gotham-Book", size: 20))
                    }
                }
//                Text("Balance").font(.custom("Gotham-Bold", size: 30))
                
                
//this is for the Navigation Bar.
                HStack{
//Home Tab
                    
                    Image("Home")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(22)
                        .frame(width: geometry.size.width/3, height: 75)
//New Wyre Button
                    Button(action: {
                        print("Hello button tapped!")
                    }) {
                        Image("Wyre Icon")
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.purple, lineWidth: 5)
                            )
                        }
                    .foregroundColor(.purple)
//Me Tab
                    Image("Person")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(22)
                        .frame(width: geometry.size.width/3, height: 75)
                      }
                .frame(width: geometry.size.width, height: geometry.size.height/9.6)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.purple, lineWidth: 1)
                )
                }.edgesIgnoringSafeArea(.bottom)
            }
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
