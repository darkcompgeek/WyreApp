//
//  NewWyreForm.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/3/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyreForm: View {
    var body: some View {
       Form{
            Section{
                NewWyreAmountField()
            }
            Section{
                NavigationLink(destination: NewWyre_PaymentMethods()) {
                    HStack{
                        Image(systemName: "lock").font(.system(size: 30, weight: .semibold)).padding()
                        VStack(alignment: .leading, spacing: 4.0){
                            Text("Wyre Balance").font(.custom("Gotham-Bold" ,size: 14))
                            Text("$25.00").foregroundColor(Color.gray).font(.custom("Gotham-Book" ,size: 14))
                        }
                    }
                }.frame(height: 75)
                
                
                
                NavigationLink(destination: NewWyre_PrivacySettings()) {
                    HStack{
                        Image(systemName: "lock").font(.system(size: 30, weight: .semibold)).padding()
                        VStack(alignment: .leading, spacing: 4.0){
                            Text("Private").font(.custom("Gotham-Bold" ,size: 14))
                            Text("This payment will only be visible to you and Amy.").foregroundColor(Color.gray).font(.custom("Gotham-Book" ,size: 14))
                        }
                    }
                }.frame(height: 75)
            }
            Button(action: {print("hello")}) {
                Text("Next").font(.custom("Gotham-Bold" ,size: 16)).multilineTextAlignment(.center).padding().foregroundColor(ColorManager.wyrePurple)
            }
        }.navigationBarTitle("New Wyre", displayMode: .inline)            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

struct NewWyreForm_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreForm()
    }
}
