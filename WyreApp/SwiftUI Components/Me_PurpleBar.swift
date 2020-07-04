//
//  Me_PurpleBar.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/30/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

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

struct Me_PurpleBar_Previews: PreviewProvider {
    static var previews: some View {
        Me_PurpleBar()
    }
}
