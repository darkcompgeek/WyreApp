//
//  SettingsSheet.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/2/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct SettingsSheet: View {
        @Environment(\.presentationMode) var mode
    var body: some View {
        NavigationView{
            VStack{
                List{
                      NavigationLink(destination: HomeTab(viewRouter: ViewRouter())) {
                        HStack{
                            Image("home")
                            Text("Home").font(.custom("Gotham-Medium", size: 20))
                        }
                        
                        
                    }.padding()
                    
                    NavigationLink(destination:
                    MeTab(viewRouter: ViewRouter())) {
                        HStack{
                            Image("person")
                            Text("My Profile").font(.custom("Gotham-Medium", size: 20))
                        }
                    }.padding()
                }.listStyle(GroupedListStyle())
            }.navigationBarTitle(Text("Settings"), displayMode: .inline)
            .navigationBarItems(leading:
            Button(action: {
                self.mode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark").font(.system(size: 22, weight: .semibold)).foregroundColor(Color.white)
                }
            )
        }
        
    }
}

struct SettingsSheet_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSheet()
    }
}
