//
//  NewWyre_Confirm.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/5/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyre_Confirm: View {
    @Binding var selectedName: String
    @Binding var selectedImage: String
    @Binding var selectedPaymentMethod: String
    @Binding var selectedPrivacy: String
    @Binding var selectedTab: String
    @Binding var amount: String
    @Binding  var caption: String
    @Environment(\.presentationMode) var mode
    var body: some View {
        
        VStack(spacing: 0.0){
            Spacer()
            HStack{
                Spacer()
                Text("Is everything correct?").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                Spacer()
            }.background(ColorManager.wyreDarkPurple)
            
            
            VStack(spacing: 0.0){
                VStack(spacing: 15.0){
                    
                    if selectedTab == "payment" {
                        HStack{
                            Spacer()
                            Text("Pay").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                            Spacer()
                        }
                    } else if selectedTab == "request" {
                        HStack{
                            Spacer()
                            Text("Request").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                            Spacer()
                        }
                    }
                    
                    
                    HStack(alignment: .center, spacing: 0.0){
                        Image(selectedImage)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 30, height: 30)
                        Text(selectedName).font(.custom("Gotham-Medium", size: 14))
                            .foregroundColor(Color.black)
                            .padding(.horizontal, 5.0)
                    }.padding(.vertical, 7.5).padding(.horizontal, 7.5).background(Color.white).cornerRadius(25)
                }.padding()
                
                
                VStack{
                    HStack{
                        Spacer()
                        Text(amount).font(.custom("Gotham-Black", size: 50))
                        Spacer()
                    }.padding()
                    HStack{
                        Spacer()
                        Text(caption).font(.custom("Gotham-Medium", size: 16))
                        Spacer()
                    }.padding()
                }.padding().background(Color.white)
                
                VStack(alignment: .center, spacing: 10.0){
                    
                    if selectedTab == "payment" {
                        if selectedPaymentMethod == "wyre" {
                            HStack(alignment: .center, spacing: 20){
                                Spacer()
                                Image("Wyre Icon").resizable().aspectRatio(contentMode: .fit).frame(width: 40).padding(10).background(ColorManager.wyrePurple).cornerRadius(10)
                                Text("Wyre Balance").font(.custom("Gotham-Medium", size: 16))
                                Spacer()
                            }
                        } else if selectedPaymentMethod == "bank" {
                            HStack(alignment: .center, spacing: 20){
                                Spacer()
                                Image(systemName: "creditcard").foregroundColor(Color.white).font(.system(size: 20, weight: .semibold)).frame(width: 40).padding(10).background(Color.gray).cornerRadius(10)
                                Text("My Credit Card").font(.custom("Gotham-Medium", size: 16))
                                Spacer()
                            }
                        }
                        
                    } else {
                        
                    }
                    
                    if selectedPrivacy == "private" {
                        HStack(alignment: .center, spacing: 0){
                            Spacer()
                            Image(systemName: "lock").font(.system(size:20, weight: .bold)).frame(width: 40).padding(10)
                            Text("Private").font(.custom("Gotham-Medium", size: 16))
                            Spacer()
                        }
                    } else if selectedPrivacy == "friends" {
                        HStack(alignment: .center, spacing: 0){
                            Spacer()
                            Image(systemName: "person").font(.system(size:20, weight: .bold)).frame(width: 40).padding(10)
                            Text("Friends Only").font(.custom("Gotham-Medium", size: 16))
                            Spacer()
                        }
                    } else if selectedPrivacy == "public" {
                        HStack(alignment: .center, spacing: 0){
                            Spacer()
                            Image(systemName: "globe").font(.system(size:20)).frame(width: 40).padding(10)
                            Text("Public").font(.custom("Gotham-Medium", size: 16))
                            Spacer()
                        }
                    }
                    
                }.padding().background(ColorManager.wyreGray)
                
                Button(action: {            self.mode.wrappedValue.dismiss()}) {
                    HStack(alignment: .center, spacing: 5.0){
                        Image(systemName: "pencil").font(.system(size: 22, weight: .bold)).foregroundColor(Color.white)
                        Text("Edit").background(ColorManager.wyrePurple).font(.custom("Gotham-Bold" ,size: 16)).multilineTextAlignment(.center).foregroundColor(Color.white)
                    }.padding().background(ColorManager.wyrePurple).frame(maxWidth: .infinity).frame(height: 60)
                }
                
                
                
            }.background(ColorManager.wyrePurple).cornerRadius(25).padding(40)
            Spacer()
            VStack {
                Button(action: {print("hello")}) {
                    if selectedTab == "payment" {
                        Text("Confirm and Pay").frame(maxWidth: .infinity).padding(20).padding(.bottom, 25.0).background(ColorManager.wyreGreen).font(.custom("Gotham-Bold" ,size: 16)).multilineTextAlignment(.center).foregroundColor(Color.black)
                    } else {
                        Text("Confirm and Request").frame(maxWidth: .infinity).padding(20).padding(.bottom, 25.0).background(ColorManager.wyreGreen).font(.custom("Gotham-Bold" ,size: 16)).multilineTextAlignment(.center).foregroundColor(Color.black)
                    }
                    
                }
            }
        }.navigationBarTitle(Text("Confirm"), displayMode: .inline).navigationBarHidden(true)
            .navigationBarBackButtonHidden(true).background(ColorManager.wyreDarkPurple).edgesIgnoringSafeArea(.bottom).edgesIgnoringSafeArea(.top)
    }
}

struct NewWyre_Confirm_Previews: PreviewProvider {
    static var previews: some View {
        NewWyre_Confirm(selectedName: .constant("Allison Copeland"), selectedImage: .constant("001"), selectedPaymentMethod: .constant("bank"), selectedPrivacy: .constant("private"), selectedTab: .constant("payment"), amount: .constant("$25"), caption: .constant("thank u"))
    }
}
