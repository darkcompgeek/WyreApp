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
            VStack(spacing: 0.0){
                HStack{
                    Button(action: {
                        self.mode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark").font(.system(size: 22, weight: .semibold)).foregroundColor(Color.white)
                    }
                    Spacer()
                    Text("Settings").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                    Spacer()
                }.padding().frame(height:70).background(ColorManager.wyrePurple)
                
                
                List{
                      NavigationLink(destination: Settings_PaymentMethods()) {
                        HStack{
                            Image("home")
                            Text("Payment Methods").font(.custom("Gotham-Medium", size: 20))
                        }
                    }.padding()
                }.listStyle(GroupedListStyle())
            }.navigationBarTitle(Text("Settings"), displayMode: .inline).navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        
    }
}

struct SettingsSheet_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSheet()
    }
}
