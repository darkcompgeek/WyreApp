//
//  NewWyre_PaymentMethods.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/3/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyre_PaymentMethods: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var btnBack : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .font(.system(size: 20, weight: .semibold)).foregroundColor(Color.white)
        }
    }
    
    var body: some View {
         ZStack{
            VStack(spacing: 0.0){
                HStack{
                    btnBack.padding(.leading, 10)
                    Spacer()
                    Text("Payment Methods").font(.custom("Gotham-Bold", size: 18)).foregroundColor(Color.white)
                    Spacer()
                }.padding().frame(height:60).background(ColorManager.wyrePurple)
                
                VStack(spacing: 0.0){
                    List{
                        Section{
                            HStack{
                                Image("Wyre Icon").resizable().aspectRatio(contentMode: .fit).frame(width: 40).padding().background(ColorManager.wyrePurple).cornerRadius(7)
                                
                                VStack(alignment: .leading, spacing: 5.0){
                                    Text("Wyre Balance").font(.custom("Gotham-Bold", size: 16))
                                    Text("$25.00").font(.custom("Gotham-Medium", size: 14))
                                }.padding()
                                Spacer()
                                Image(systemName: "checkmark").font(.system(size: 20, weight: .semibold))
                            }

                        }
                        
                        Section{
                                HStack{
                                    Image(systemName: "creditcard").frame(width: 40).font(.system(size: 30, weight: .semibold)).foregroundColor(Color.white).padding().background(Color.gray).cornerRadius(7)
                                    VStack(alignment: .leading, spacing: 5.0){
                                        Text("My Bank Account").font(.custom("Gotham-Bold", size: 16))
                                        Text("XXXX-XXXX").font(.custom("Gotham-Medium", size: 14)).foregroundColor(Color.gray)
                                    }.padding()
                                }
                        }
                        
                        Section{
                            Button(action: {print("New Payment")}) {
                                HStack(alignment: .center){
                                    Spacer()
                                    Image(systemName: "plus").font(.system(size: 20, weight: .semibold))
                                    Text("Add A Payment Method").font(.custom("Gotham-Medium", size: 14))
                                    Spacer()
                                }.foregroundColor(Color.black)
                            }
                        }
                        
                        }.listStyle(GroupedListStyle())
                }
                
            }.navigationBarTitle(Text("Other Title"), displayMode: .inline)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct NewWyre_PaymentMethods_Previews: PreviewProvider {
    static var previews: some View {
        NewWyre_PaymentMethods()
    }
}
