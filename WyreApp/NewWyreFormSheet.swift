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
                    
                    
                    Button(action: {self.selectedTab = "payment"}) {
                        if selectedTab == "payment" {
                           Text("Pay").font(.custom("Gotham-Bold", size: 18)).foregroundColor(Color.white)
                        } else {
                            Text("Pay").font(.custom("Gotham-Bold", size: 18)).foregroundColor(Color.white).opacity(0.5)
                        }
                    }.padding()
                    
                    Button(action: {self.selectedTab = "request"}) {
                        
                        if selectedTab == "request" {
                             Text("Request").font(.custom("Gotham-Bold", size: 18)).foregroundColor(Color.white)
                        } else {
                           Text("Request").font(.custom("Gotham-Bold", size: 18)).foregroundColor(Color.white).opacity(0.5)
                            
                        }

                    }.padding()
                    Spacer()
                }.padding().frame(height:60).background(ColorManager.wyrePurple)

                ZStack{
                    NewWyreForm(selectedName: $selectedName, selectedImage: $selectedImage, selectedTab: $selectedTab, selectedPaymentMethod: $selectedPaymentMethod, selectedPrivacy: $selectedPrivacy, amount: $amount, caption: $caption)
                    VStack {
                        Spacer()
                        NavigationLink(destination: NewWyre_Confirm(selectedName: $selectedName, selectedImage: $selectedImage, selectedPaymentMethod: $selectedPaymentMethod, selectedPrivacy: $selectedPrivacy, selectedTab: $selectedTab, amount: $amount, caption: $caption)) {
                                Text("Next").frame(maxWidth: .infinity).padding(20).padding(.bottom, 25.0).background(ColorManager.wyrePurple).font(.custom("Gotham-Bold" ,size: 16)).multilineTextAlignment(.center).foregroundColor(Color.white)
                        }.navigationBarTitle(Text("Confirm"), displayMode: .inline).navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)

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
