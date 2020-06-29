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
            HomePurpleBar().frame(height: 250).edgesIgnoringSafeArea(.top)
            DarkPurpleRow()
            Spacer()
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
