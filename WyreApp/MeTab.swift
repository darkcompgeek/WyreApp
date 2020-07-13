//
//  MeTab.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/29/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct MeTab: View {
            @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        VStack(spacing: 0.0){
            VStack(spacing: 0.0){
                Rectangle().fill(ColorManager.wyrePurple).edgesIgnoringSafeArea(.top)
                Me_PurpleBar()
                Me_DarkPurpleRow()
            }.frame(height: 275)
            HStack{
                Text("Your Activity").font(.custom("Gotham-Medium", size: 14))
                    .padding()
                Spacer()
            }
            MeFeedList()
        }
    }
}

struct Me_PurpleBar: View {
    
@State private var showingSheet = false
    var body: some View {
        
        VStack(spacing: 0.0){
            HStack{
                    Spacer()
                    Button(action: {
                        self.showingSheet.toggle()
                    }) {
                        Image("settings")
                            .foregroundColor(Color.white)
                            .padding(20)
                                }
            }.background(ColorManager.wyrePurple)              .sheet(isPresented: $showingSheet) {
                      SettingsSheet()
                  }
            VStack(spacing: 5.0){
                                Image("sai")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 100, height: 100)
                                VStack(spacing: 5.0){
                                    Text("Sai Kannekanti")
                                        .font(.custom("Gotham-Bold", size: 20))
                                        .foregroundColor(Color.white)
                                    
                                    Text("@darkcompgeek")
                                        .font(.custom("Gotham-Book", size: 16))
                                        .foregroundColor(Color.white)
                                }

                                }.padding(.top, -40.0).padding(0)
            HStack{
                Spacer()
                Button(action: {
                    print("Edit Profile")
                }) {
                    HStack(spacing: 10.0){
                        Image(systemName: "pencil").font(.system(size: 20, weight: .bold)).foregroundColor(Color.black)
                        Text("Edit Profile")
                            .font(.custom("Gotham-Medium", size: 14))
                            .foregroundColor(Color.black)
                    }
                }.padding(.horizontal, 10.0).padding(12).background(Color.white).cornerRadius(100)
                Spacer()
            }.padding(10)
            }
        .background(ColorManager.wyrePurple)
        

    }
}

struct Me_DarkPurpleRow: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0.0){
                                    Spacer()
                                        Button(action: {
                                            print("Hello button tapped!")
                                        }) {
                                            Text("21 FRIENDS")
                                                .foregroundColor(Color.white)
                                                .font(.custom("Gotham-Medium", size: 14))
                                                .frame(maxWidth: .infinity)
                                        }.padding(15)
                                        .background(ColorManager.wyreDarkPurple)
                                    
                                    
                                    
                                        Button(action: {
                                            print("Hello button tapped!")
                                        }) {
                                            Text("FIND FRIENDS")
                                                .font(.custom("Gotham-Medium", size: 14))
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                            }.padding(15)          .background(ColorManager.wyreDarkPurple)
                                    
        Spacer()
                                    
                                }.background(ColorManager.wyreDarkPurple)
    }
}

struct MeTab_Previews: PreviewProvider {
    static var previews: some View {
        MeTab(viewRouter: ViewRouter())
    }
}
