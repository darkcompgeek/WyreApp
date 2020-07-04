//
//  NewWyreForm.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/3/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyreForm: View {
    let selected = SelectedUser(fullName: "Allison Copeland", imageNumber: "001")
    @Binding var selectedName: String
    @Binding var selectedImage: String
    var body: some View {
        
        VStack(spacing: 0.0) {

                VStack(alignment: .center){
                        HStack(alignment: .center){
                            Spacer()
                            HStack(alignment: .center, spacing: 0.0){
                                Image(selectedImage)
                                .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 30, height: 30)
                                Text(selectedName).font(.custom("Gotham-Medium", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(.horizontal, 5.0)
                                Button(action: {print("Clear")}) {
                                    Image(systemName: "xmark.circle.fill").foregroundColor(Color.gray).font(.system(size:15, weight: .semibold)).padding(.horizontal, 1.0)
                                    }
                            }.padding(.vertical, 7.5).padding(.horizontal, 7.0).background(Color.white).cornerRadius(100)
                    
                            Button(action: {print("Hello")}) {
                                Image(systemName: "plus").foregroundColor(Color.black).font(.system(size:15, weight: .semibold))
                                
                                }.padding().background(Color.white).cornerRadius(100)
                            Spacer()
                        }
           }.padding(10).background(ColorManager.wyrePurple)
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
        NewWyreForm(selectedName: .constant("Allison Copeland"), selectedImage: .constant("001"))
    }
}
