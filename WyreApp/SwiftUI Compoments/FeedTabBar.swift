//
//  FeedTabBar.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/28/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct FeedTabBar: View {
    var body: some View {
        HStack {
            Spacer()
            Spacer()
            Text("Public")
                .font(.custom("Gotham-Bold", size: 16))
            Spacer()
            Text("Friends")
            .font(.custom("Gotham-Bold", size: 16))
            Spacer()
            Spacer()
        }.padding()
    }
}

struct FeedTabBar_Previews: PreviewProvider {
    static var previews: some View {
        FeedTabBar()
    }
}
