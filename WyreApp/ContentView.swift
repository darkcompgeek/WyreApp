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
        
        GeometryReader { geometry in
            VStack {
                
            //This is the Content in the main view
                Spacer()
                Text("Home").font(.custom("Gotham-Bold", size: 30))
                Spacer()
                //THe spacers help center the text vertically
                HStack{
                    //this is for the Navigation Bar.
                    Image("Home")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(22)
                        .frame(width: geometry.size.width/3, height: 75)
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: 75, height: 75)
                    Image("Person")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(22)
                        .frame(width: geometry.size.width/3, height: 75)
                      }
                .frame(width: geometry.size.width, height: geometry.size.height/10)
                .background(Color.white.shadow(radius: 2))
                }.edgesIgnoringSafeArea(.bottom)
            }
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
