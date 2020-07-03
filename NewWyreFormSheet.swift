//
//  NewWyreFormSheet.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/2/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyreFormSheet: View {

    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView{
            //header
            VStack(spacing:0.0) {
                
                //NavigationBar
                HStack{
                    Button(action: {
                        self.mode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark").font(.system(size: 22, weight: .semibold)).foregroundColor(Color.white)
                    }
                    Spacer()
                    Text("Pay").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white).padding()
                    Text("Request").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white).opacity(0.5).padding()
                    Spacer()
                }.padding().frame(height:70).background(ColorManager.wyrePurple)

                ZStack{
                   NewWyreForm()
                    
                }
            }

        }
        

    }
}

struct NewWyreFormSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreFormSheet()
    }
}

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
