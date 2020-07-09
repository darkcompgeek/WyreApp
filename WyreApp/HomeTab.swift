//
//  HomeTab.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/29/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct HomeTab: View {
    
    @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        //iphone UI
        VStack(spacing: 0.0){
            VStack(spacing: 0.0){
                Rectangle().foregroundColor(ColorManager.wyrePurple).edgesIgnoringSafeArea(.top)
                Home_PurpleBar()
                Home_DarkPurpleRow()
            }.frame(height: 200)
            Feed()
        }
    }
}

struct Home_PurpleBar: View {
    @State private var showingSheet = false
    var body: some View {
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
        
    }
}

struct Home_DarkPurpleRow: View {
    var body: some View {
        //iphone UI
        HStack(alignment: .center, spacing: 0.0){
            Spacer()
            Button(action: {
                print("Hello button tapped!")
            }) {
                Image("coin")
                    .foregroundColor(Color.white)
                Text("ADD FUNDS")
                    .foregroundColor(Color.white)
                    .font(.custom("Gotham-Medium", size: 14))
                    .frame(maxWidth: .infinity)
            }.padding(15)
                .background(ColorManager.wyreDarkPurple)
            
            Button(action: {
                print("Hello button tapped!")
            }) {
                Image("bank")
                    .foregroundColor(Color.white)
                Text("MOVE TO BANK")
                    .font(.custom("Gotham-Medium", size: 14))
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
            }.padding(15)          .background(ColorManager.wyreDarkPurple)
            
            Spacer()
            
        }.background(ColorManager.wyreDarkPurple)
    }
    
}


struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab(viewRouter: ViewRouter())
    }
}
