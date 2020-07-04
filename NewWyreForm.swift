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
        VStack(spacing: 0.0) {
            HStack{
                Spacer()
                HStack{
                    Image("001")
                    .resizable()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                    Text("Allison Copeland").font(.custom("Gotham-Medium", size: 16))
                        .foregroundColor(Color.black)
                    }.padding(10).background(Color.white).cornerRadius(100)
                
                Button(action: {print("Hello")}) {
                    Image(systemName: "plus").foregroundColor(Color.white).font(.system(size:25, weight: .semibold))
                    
                }
                
                
                Spacer()
            }.padding(.top, 0.0).padding(.bottom).background(ColorManager.wyrePurple)
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
}

struct NewWyreForm_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreForm()
    }
}
