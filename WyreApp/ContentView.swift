//
//  ContentView.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/27/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

var currentBalance = 25.00

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
            //This is the Content in the main view
                ZStack {
                Rectangle()
                    .fill(ColorManager.wyrePurple)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: geometry.size.height/3)
                    VStack{
                        Text("BALANCE")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .font(.custom("Gotham-Bold", size: 20))
                        
                        Text("$25.00")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .font(.custom("Gotham-Black", size: 50))
                        HStack{
                            Button(action: {
                                print("Hello button tapped!")
                            }) {
                                Text("ADD FUNDS")
                                    .foregroundColor(Color.white)
                                    .font(.custom("Gotham-Medium", size: 20))
                                    .padding()
                            }.background(ColorManager.wyreDarkPurple)
                            Button(action: {
                                print("Hello button tapped!")
                            }) {
                                Text("MOVE TO BANK")
                                    .font(.custom("Gotham-Medium", size: 20))
                                    .foregroundColor(Color.white)

                                    .padding()
                                }
                                .background(ColorManager.wyreDarkPurple)
                        }
                    }
                    
            }
                HStack {
                    List {
                        Text("Content")
                            .font(.custom("Gotham-Medium", size: 20))
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
                        ZStack{
                            RoundedRectangle(cornerRadius: 100)
                                .fill(ColorManager.wyrePurple)
                                .padding(10)
                                
                            Image("Wyre Icon")
                                .foregroundColor(Color.white)
                                
                        }
                        }
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
                        .stroke(ColorManager.wyrePurple, lineWidth: 1)
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
