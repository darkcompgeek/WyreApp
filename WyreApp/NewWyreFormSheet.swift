//
//  NewWyreFormSheet.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/2/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyreFormSheet: View {
    @State private var selectedName = ""
    @State private var selectedImage = ""
    @State private var selectedPaymentMethod = "wyre"
    @State private var selectedPrivacy = "private"
    @State private var amount = "$" + ""
    @State private var caption = ""
    @Environment(\.presentationMode) var mode
    @State private var selectedTab = "payment"
    @State private var paymentIsSelected = true
    @State var showSuggestions = true
    var body: some View {
        
        NavigationView{
            //header
            VStack(spacing:0.0){
                
                //NavigationBar
                HStack{
                    Button(action: {
                        self.mode.wrappedValue.dismiss()
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }) {
                            Image(systemName: "xmark").font(.system(size: 20, weight: .semibold)).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack(spacing: 0.0) {
                        HStack{
                            Button(action: {
                                self.selectedTab = "payment"
                                self.paymentIsSelected = true
                            }) {
                                Text("Pay").font(.custom("Gotham-Bold", size: 18)).foregroundColor(Color.white).opacity(self.paymentIsSelected ? 1.0 : 0.5)
                            }.padding(.horizontal).padding(.vertical, 8.0)
                            
                            Button(action: {
                                self.selectedTab = "request"
                                self.paymentIsSelected = false
                            }) {
                                Text("Request").font(.custom("Gotham-Bold", size: 18)).foregroundColor(Color.white).opacity(self.paymentIsSelected ? 0.5 : 1.0)
                            }.padding(.horizontal).padding(.vertical, 8.0)
                        }
                        
                        Rectangle().foregroundColor(Color.white).frame(width:self.paymentIsSelected ? 30 : 70, height: 3.5).cornerRadius(15).offset(x:self.paymentIsSelected ? -57 : 36).animation(.easeOut(duration: 0.20))
                    }

                    Spacer()
                }.padding().frame(height:60).background(ColorManager.wyrePurple)

                ZStack{
                    NewWyreForm(selectedName: $selectedName, selectedImage: $selectedImage, selectedTab: $selectedTab, selectedPaymentMethod: $selectedPaymentMethod, selectedPrivacy: $selectedPrivacy, amount: $amount, caption: $caption, showSuggestions: $showSuggestions)
                    VStack {
                        Spacer()
                        
                        
                        NavigationLink(destination: NewWyre_Confirm(selectedName: $selectedName, selectedImage: $selectedImage, selectedPaymentMethod: $selectedPaymentMethod, selectedPrivacy: $selectedPrivacy, selectedTab: $selectedTab, amount: $amount, caption: $caption)) {
                                Text("Next").frame(maxWidth: .infinity).padding(20).padding(.bottom, 25.0).background(ColorManager.wyrePurple).font(.custom("Gotham-Bold" ,size: 16)).multilineTextAlignment(.center).foregroundColor(Color.white)
                        }.navigationBarTitle(Text("Confirm"), displayMode: .inline).navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true).opacity(showSuggestions ? 0.0 : 1.0)

                    }.edgesIgnoringSafeArea(.bottom)
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
