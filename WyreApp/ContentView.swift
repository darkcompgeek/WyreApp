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
                ZStack {
                    Rectangle()
                    .fill(ColorManager.wyrePurple)
                    .padding(0.0)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: geometry.size.height/4)
                    VStack(alignment: .leading){
                        Text("BALANCE")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .font(.custom("Gotham-Bold", size: 16))
                        Text("$25.00")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .font(.custom("Gotham-Black", size: 50))
                        
                }
                }
                HStack(alignment: .center, spacing: 0.0){
                    Button(action: {
                        print("Hello button tapped!")
                    }) {
                        Text("ADD FUNDS")
                            .foregroundColor(Color.white)
                            .font(.custom("Gotham-Medium", size: 16))
                            .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }.background(ColorManager.wyreDarkPurple)
                    Button(action: {
                        print("Hello button tapped!")
                    }) {
                        Text("MOVE TO BANK")
                            .font(.custom("Gotham-Medium", size: 16))
                            .foregroundColor(Color.white)
                            .padding()
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
                HStack {
                    List {
                        Text("Content")
                            .font(.custom("Gotham-Medium", size: 20))
                    }
                }
//                Text("Balance").font(.custom("Gotham-Bold", size: 30))
                
                
//this is for the Navigation Bar.
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                    VStack{
                        HStack(spacing: 0.0){
         //Home Tab
                             Image("Home")
                                 .aspectRatio(contentMode: .fit)
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
                                 .aspectRatio(contentMode: .fit)
                                 .frame(width: geometry.size.width/3, height: 75)
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
