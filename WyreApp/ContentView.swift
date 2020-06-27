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
        TabView(selection: $selection){
            Text("Home")
                .font(.custom("Gotham-Bold", size: 50))
                .tabItem {
                        Image("first")
                }
                .tag(0)
            Text("Me")
                .font(.custom("Gotham-Bold", size: 50))
                .tabItem {
                        Image("second")
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
