//
//  MeTab.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/29/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct MeTab: View {
            @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        VStack(spacing: 0.0){
            VStack(spacing: 0.0){
                Rectangle().fill(ColorManager.wyrePurple).edgesIgnoringSafeArea(.top)
                Me_PurpleBar()
                Me_DarkPurpleRow()
            }.frame(height: 300)
            HStack{
                Text("Your Activity").font(.custom("Gotham-Medium", size: 14))
                    .padding([.top, .leading])
                Spacer()
            }
            FeedList()
        }
    }
}

struct MeTab_Previews: PreviewProvider {
    static var previews: some View {
        MeTab(viewRouter: ViewRouter())
    }
}
