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
    @State var showSplashScreen = true
    @State var slideUpBar = false
    @State var fadeInFeed = false
    var body: some View {
        
        ZStack{
                //iphone ui
                VStack(spacing: 0.0){
                    if viewRouter.currentView == "home" {
                        HomeTab(viewRouter: viewRouter).opacity(fadeInFeed ? 1.0 : 0.0)
                    } else if viewRouter.currentView == "settings" {
                        MeTab(viewRouter: viewRouter)
                    }
                    NavigationBar(viewRouter: viewRouter).offset(y:slideUpBar ? 0 : 95)
                }.edgesIgnoringSafeArea(.bottom)
            SplashScreen(slideUpBar: $slideUpBar, fadeInFeed: $fadeInFeed).opacity(showSplashScreen ? 1 : 0)
              .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.65) {
                  SplashScreen.shouldAnimate = false
                  withAnimation() {
                    self.showSplashScreen = false
                  }
                }
            }
        }
        

    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
}
