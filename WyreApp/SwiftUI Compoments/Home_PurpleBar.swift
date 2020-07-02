//
//  HomePurpleBar.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/28/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct Home_PurpleBar: View {
            @State private var showingSheet = false
    var body: some View {
        Group{
            if UIDevice.current.userInterfaceIdiom == .phone{
                //iphoneUI
                    VStack{
                    HStack{
                                        Spacer()
                                        Button(action: {
                                            self.showingSheet.toggle()

                                        }) {
                                            Image("settings")
                        .foregroundColor(Color.white)
                                                .padding(20)
                                        }
                    }.background(ColorManager.wyrePurple)                            .sheet(isPresented: $showingSheet) {
                        SettingsSheet()
                    }
                        
                        
                                            VStack(alignment: .leading, spacing: 0.0){
                                        Spacer()
                                        HStack{
                                            Image("wyreText")
                                            Text("BALANCE")
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .font(.custom("Gotham-Bold", size: 14))
                                                .lineLimit(1)
                                                
                                            Spacer()
                                        }
                                        HStack {
                                            Text("$25.00")
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .font(.custom("Gotham-Black", size: 45))
                                                .lineLimit(1)
                                            Spacer()
                                        }
                                    }
                                        .padding(.bottom, 15.0)
                                    .padding(.leading, 25)
                                        .background(ColorManager.wyrePurple)
                }
            } else {
                                    VStack{
                    HStack{
                                        Spacer()
                                        Button(action: {
                                            print("Hello button tapped!")
                                        }) {
                                            Image("settings")
                                                .frame(width: 16, height: 16)
                                                .foregroundColor(Color.white)
                                                .padding(20.0)
                                        }
                    }.background(
                                        ColorManager.wyrePurple
                                    )
                                            VStack(alignment: .leading, spacing: 0.0){
                                        Spacer()
                                        HStack{
                                            Text("BALANCE")
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .font(.custom("Gotham-Bold", size: 12))
                                                .lineLimit(1)
                                                
                                            Spacer()
                                        }
                                        HStack {
                                            Text("$25.00")
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .font(.custom("Gotham-Black", size: 30))
                                                .lineLimit(1)
                                            Spacer()
                                        }
                                    }
                                        .padding(.bottom, 15.0)
                                    .padding(.leading, 25)
                                        .background(ColorManager.wyrePurple)
                                    }.frame(height: 175)            }
        }

    }
}

struct Home_PurpleBar_Previews: PreviewProvider {
    static var previews: some View {
        Home_PurpleBar()
    }
}
