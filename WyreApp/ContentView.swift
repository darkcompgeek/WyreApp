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
            VStack(alignment: .leading, spacing: 0.0) {
            //This is the Content in the main view
                    Rectangle().fill(ColorManager.wyrePurple)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: geometry.size.height/4.5)
                        .overlay(VStack(alignment: .leading){
                            Spacer()
                            Text("BALANCE")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                                .font(.custom("Gotham-Bold", size: 16))
                                .lineLimit(1)
                            HStack {
                                Text("$25.00")
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("Gotham-Black", size: 50))
                                    .lineLimit(1)
                                Spacer()
                            }
                            
                        }.padding(.bottom, 15.0)
                        .padding(.leading, 25))

                HStack(alignment: .center, spacing: 0.0){
                    Button(action: {
                        print("Hello button tapped!")
                    }) {
                        Text("ADD FUNDS")
                            .foregroundColor(Color.white)
                            .font(.custom("Gotham-Medium", size: 16))
                            .padding(20)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.background(ColorManager.wyreDarkPurple)
                    Button(action: {
                        print("Hello button tapped!")
                    }) {
                        Text("MOVE TO BANK")
                            .font(.custom("Gotham-Medium", size: 16))
                            .foregroundColor(Color.white)
                            .padding(20)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        }
                        .background(ColorManager.wyreDarkPurple)
                }
                
                HStack {
                    Spacer()
                    Spacer()
                    Text("Public")
                        .font(.custom("Gotham-Bold", size: 16))
                    Spacer()
                    Text("Friends")
                    .font(.custom("Gotham-Bold", size: 16))
                    Spacer()
                    Spacer()
                }.padding()
                HStack(alignment: .center) {
                    List {
                        HStack{
                            Spacer()
                            VStack{
                                Text("Sai paid Vipin")
                                    .font(.custom("Gotham-Medium", size: 16))
                                    .multilineTextAlignment(.center)
                                HStack{
                                    Circle()
                                    Circle()
                                }
                                Text("Thanks! :)")
                                    .font(.custom("Gotham-Book", size: 16))
                                    .multilineTextAlignment(.center)
                            }
                            Spacer()
                        }.frame(height: geometry.size.height/10)
                        .padding()
                    }
                }
//                Text("Balance").font(.custom("Gotham-Bold", size: 30))
                
                
//this is for the Navigation Bar.
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                        
                    VStack{
                        
                        HStack(alignment: .center, spacing: 0.0){
                            Spacer()
         //Home Tab
                             Image("Home")
                                 .aspectRatio(contentMode: .fit)
                                .padding()
         //New Wyre Button
                             Button(action: {
                                 print("Hello button tapped!")
                             }) {
                                 ZStack{
                                     RoundedRectangle(cornerRadius: 100)
                                         .fill(ColorManager.wyrePurple)
                                         .padding(10)
                                        .frame(width: 150, height: 75)
                                         
                                     Image("Wyre Icon")
                                         .foregroundColor(Color.white)
                                 }
                             }
                             .padding(.horizontal, 25.0)
         //Me Tab
                            Image("Person")
                                        .aspectRatio(contentMode: .fit)
                                        .padding()
                            Spacer()
                        }
                        Spacer()
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height/9.6)
                
                
                }.edgesIgnoringSafeArea(.bottom)
            }
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
