//
//  MacAppLayout.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/30/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct MacAppLayout: View {
    var body: some View {
        
        NavigationView {
            VStack(spacing: 0.0){
                List {
                    NavigationLink(destination: HomeTab(viewRouter: ViewRouter())) {
                        HStack{
                            Image("home")
                            Text("Home").font(.custom("Gotham-Medium", size: 20))
                        }
                    }
                    NavigationLink(destination:
                    MeTab(viewRouter: ViewRouter())) {
                        HStack{
                            Image("person")
                            Text("My Profile").font(.custom("Gotham-Medium", size: 20))
                        }
                    }
                }
            }
            .navigationBarTitle(Text("$25.00"), displayMode: .inline)
            }
            
        }
        
        
//        HStack{
//            VStack(alignment: .leading, spacing: 0.0){
//                Home_PurpleBar().frame(height:175)
//                Home_DarkPurpleRow()
//                Group{
//                    HStack(alignment: .center, spacing: 20.0){
//                    Image("home")
//                     Text("Home")                .font(.custom("Gotham-Medium", size: 16
//                         ))
//                    }.padding()
//                    HStack(alignment: .center, spacing: 20.0){
//                    Image("person")
//                     Text("Profile")                .font(.custom("Gotham-Medium", size: 16
//                         ))
//                    }.padding()
//                    Spacer()
//                    HStack(alignment: .center){
//                    Text("My Account").font(.custom("Gotham-Medium", size: 16
//                    ))
//                    }.padding()
//
//                }
//
//            }.frame(width:375).background(ColorManager.wyreGray)
//            FeedList()
//        }.edgesIgnoringSafeArea(.top)
    }
    

#if os(macOS)
extension View {
    func navigationBarTitle(_ title: String) -> some View {
        self
    }
}
#endif

struct MacAppLayout_Previews: PreviewProvider {
    static var previews: some View {
        MacAppLayout()
    }
}
