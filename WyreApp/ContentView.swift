//
//  ContentView.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/27/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewRouter = ViewRouter()
//    @State private var selection = 0
    var body: some View {
        Group{
            if UIDevice.current.userInterfaceIdiom == .phone {
                //iphone ui
                VStack(spacing: 0.0){
                    if viewRouter.currentView == "home" {
                        HomeTab(viewRouter: viewRouter)
                    } else if viewRouter.currentView == "settings" {
                        MeTab(viewRouter: viewRouter)
                    }
                        NavigationBar(viewRouter: viewRouter)
                }.edgesIgnoringSafeArea(.bottom)
            } else {
                //ipad and mac UI
                HStack{
                    VStack(alignment: .leading, spacing: 0.0){
                        Home_PurpleBar().frame(height:175)
                        Home_DarkPurpleRow()
                        Group{
                            HStack(alignment: .center, spacing: 20.0){
                            Image("home")
                             Text("Home")                .font(.custom("Gotham-Medium", size: 16
                                 ))
                            }.padding()
                            HStack(alignment: .center, spacing: 20.0){
                            Image("person")
                             Text("Profile")                .font(.custom("Gotham-Medium", size: 16
                                 ))
                            }.padding()
                            Spacer()
                            HStack(alignment: .center){
                            Text("My Account").font(.custom("Gotham-Medium", size: 16
                            ))
                            }.padding()
                            
                        }

                    }.frame(width:375).background(ColorManager.wyreGray)
                    FeedList()
                }.edgesIgnoringSafeArea(.top)
            }

        }
        

    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
}
