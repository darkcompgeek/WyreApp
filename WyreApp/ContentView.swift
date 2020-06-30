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
        VStack(spacing: 0.0){
            if viewRouter.currentView == "home" {
                HomeTab(viewRouter: viewRouter)
            } else if viewRouter.currentView == "settings" {
                MeTab(viewRouter: viewRouter)
            }
                NavigationBar(viewRouter: viewRouter)
        }.edgesIgnoringSafeArea(.bottom)
        

    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
}
