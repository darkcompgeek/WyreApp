//
//  FeedTabBar.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/28/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

   
struct FeedTabBar: View {
    @State private var pickerSelection = "public"
    var body: some View {
        HStack{
            Spacer()
            Picker("", selection: $pickerSelection) {
              // 3        // 4
              Text("Public").tag("public")
                .font(.custom("Gotham-Bold", size: 16
                    ))
              Text("Friends").tag("Friends")
                .font(.custom("Gotham-Bold", size: 16
                    ))
            }.background(Color.white)
            
            .pickerStyle(SegmentedPickerStyle())
            // 6
                .padding(10)
            Spacer()
        }

        
//        HStack {
//            Spacer()
//            Spacer()
//            Text("Public")
//                .font(.custom("Gotham-Bold", size: 16))
//            Spacer()
//            Text("Friends")
//            .font(.custom("Gotham-Bold", size: 16))
//            Spacer()
//            Spacer()
//        }.padding()
    }
}

struct FeedTabBar_Previews: PreviewProvider {
    static var previews: some View {
        FeedTabBar()
    }
}
