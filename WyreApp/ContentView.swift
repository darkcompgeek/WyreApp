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
        ZStack{
            VStack(spacing: 0.0){
                VStack(spacing: 0.0){
                    Rectangle().foregroundColor(ColorManager.wyrePurple).edgesIgnoringSafeArea(.top)
                        
                    HomePurpleBar()
                    DarkPurpleRow()
                }.frame(height: 215)
            FeedTabBar()
            FeedList()
        }
            VStack{
            Spacer()
                NavigationBar()
        }
        }.edgesIgnoringSafeArea(.bottom)
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
