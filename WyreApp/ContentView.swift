//
//  ContentView.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/27/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {

        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 0) {
                //This is the Content in the main view
                VStack{
                    HStack{
                                        Spacer()
                                        Button(action: {
                                            print("Hello button tapped!")
                                        }) {
                                            Text("Settings")
                                                .foregroundColor(Color.white)
                                                .padding(20)
                                        }
                    }.background(
                                        ColorManager.wyrePurple
                                    )
                                    VStack(alignment: .leading){
                                        Spacer()
                                        HStack{
                                            Text("BALANCE")
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .font(.custom("Gotham-Bold", size: 16))
                                                .lineLimit(1)
                                            Spacer()
                                        }
                                        HStack {
                                            Text("$25.00")
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .font(.custom("Gotham-Black", size: 50))
                                                .lineLimit(1)
                                            Spacer()
                                        }
                                    }
                                        .padding(.bottom, 15.0)
                                    .padding(.leading, 25)
                                        .background(ColorManager.wyrePurple)
                    //ADD FUNDS AND MOVE TO BANK BUTTON ROW
                                    HStack(alignment: .center, spacing: 0.0){
                                        Button(action: {
                                            print("Hello button tapped!")
                                        }) {
                                            Text("ADD FUNDS")
                                                .foregroundColor(Color.white)
                                                .font(.custom("Gotham-Medium", size: 16))
                                                .padding(20)
                                            .frame(minWidth: 0, maxWidth: geometry.size.width)
                                        }.background(ColorManager.wyreDarkPurple)
                                        Button(action: {
                                            print("Hello button tapped!")
                                        }) {
                                            Text("MOVE TO BANK")
                                                .font(.custom("Gotham-Medium", size: 16))
                                                .foregroundColor(Color.white)
                                                .padding(20)
                                                .frame(minWidth: 0, maxWidth: geometry.size.width)
                                            }
                                            .background(ColorManager.wyreDarkPurple)
                                    }
                }.edgesIgnoringSafeArea(.top)
                .frame(height: geometry.size.height/4)
//TAB BAR FOR FEED
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
//FEED LIST
                HStack(alignment: .center) {
                    List {
                        HStack{
                            Spacer().frame(width: 50)
                            VStack{
                                Text("Sai paid Vipin")
                                    .font(.custom("Gotham-Medium", size: 16))
                                    .multilineTextAlignment(.center)
                                HStack{
                                    Circle().frame(width:50)
                                    Rectangle().frame(height: 2)
                                        .foregroundColor(ColorManager.wyrePurple)
                                    Circle().frame(width:50)

                                }
                                Text("Thanks! :)")
                                    .font(.custom("Gotham-Book", size: 16))
                                    .multilineTextAlignment(.center)
                            }
                            Spacer().frame(width: 50)
                        }.frame(height: geometry.size.height/10)
                        .padding()
                    }
                }
                
                }.edgesIgnoringSafeArea(.bottom)
            }
        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
