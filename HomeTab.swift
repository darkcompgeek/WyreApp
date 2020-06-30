//
//  HomeTab.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/29/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct HomeTab: View {
        @ObservedObject var viewRouter: ViewRouter
    var body: some View {
            VStack(spacing: 0.0){
                VStack(spacing: 0.0){
                    Rectangle().foregroundColor(ColorManager.wyrePurple).edgesIgnoringSafeArea(.top)
                        
                    HomePurpleBar()
                    DarkPurpleRow()
                }.frame(height: 215)
            FeedTabBar()
            FeedList()
        }
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab(viewRouter: ViewRouter())
    }
}