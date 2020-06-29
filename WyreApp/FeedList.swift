//
//  FeedList.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/28/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct FeedList: View {
    var body: some View {
        HStack(alignment: .center) {
            List {
                HStack{
                    VStack{
                        Image(systemName: "globe")
                        Text("2m").font(.custom("Gotham-Book", size: 16))
                    }
                    Spacer().frame(width: 50)
                    VStack{
                        Text("You paid Dalia")
                            .font(.custom("Gotham-Medium", size: 16))
                            .multilineTextAlignment(.center)
                        HStack{
                            Circle().frame(height: 40)
                            Rectangle()
                                .foregroundColor(ColorManager.wyrePurple)
                                .frame(height: 2)
                            Circle()

                        }
                        Text("Thanks! :)")
                            .font(.custom("Gotham-Book", size: 16))
                            .multilineTextAlignment(.center)
                    }
                    Spacer().frame(width: 50)
                    HStack{
                        Image(systemName: "heart")
                        Text("1").font(.custom("Gotham-Book", size: 16))
                    }
                }
                .padding()
            }
        }
    }
}

struct FeedList_Previews: PreviewProvider {
    static var previews: some View {
        FeedList()
    }
}
