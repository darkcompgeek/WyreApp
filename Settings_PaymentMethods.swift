//
//  Settings_PaymentMethods.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/3/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct Settings_PaymentMethods: View {
    
    @Environment(\.presentationMode) var presentationMode
    var btnBack : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .font(.system(size: 22, weight: .semibold)).foregroundColor(Color.white)
        }
    }
    
    var body: some View {
        ZStack{
            
            //navbar
            VStack{
                HStack{
                    btnBack.padding(.leading, 10)
                    Spacer()
                    Text("Payment Methods").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                    Spacer()
                }.padding().frame(height:70).background(ColorManager.wyrePurple)
                Spacer()
Text("hello")
                Spacer()
            }.navigationBarTitle(Text("Other Title"), displayMode: .inline)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct Settings_PaymentMethods_Previews: PreviewProvider {
    static var previews: some View {
        Settings_PaymentMethods()
    }
}
