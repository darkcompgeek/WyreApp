//
//  NewWyreForm.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/3/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyreForm: View {
    @State var selectedName = ""
    @State var selectedImage = ""
    @State var showSuggestions = true
    @ObservedObject var selected = UserSelection()
    @Binding var selectedTab: String
    
    var body: some View {
        ZStack{
            VStack(spacing: 0.0) {
                VStack(alignment: .center){
                    HStack(alignment: .center){
                        Spacer()
                        if selectedImage == "" && selectedName == "" {
                            
                        } else {
                            HStack(alignment: .center, spacing: 0.0){
                                Image(selectedImage)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 30, height: 30)
                                
                                Text(selectedName).font(.custom("Gotham-Medium", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(.horizontal, 5.0)
                                
                                Button(action: {
                                    self.selectedImage = ""
                                    self.selectedName = ""
                                    
                                }) {
                                    Image(systemName: "xmark.circle.fill").foregroundColor(Color.gray).font(.system(size:15, weight: .semibold)).padding(.horizontal, 1.0)
                                }
                            }.padding(.vertical, 7.5).padding(.horizontal, 7.0).background(Color.white).cornerRadius(100)
                        }
                        
                        
                        Button(action: {
                            print("add user")
                            self.showSuggestions.toggle()
                        }) {
                            Image(systemName: "pencil").foregroundColor(Color.black).font(.system(size:15, weight: .bold))
                            
                        }.padding().background(Color.white).cornerRadius(100)
                        Spacer()
                    }
                    
        
                }.padding(10).background(ColorManager.wyrePurple)
                
                Form{
                    Section{
                        NewWyreAmountField()
                    }

                    Section{
                        
                        if selectedTab == "payment" {
                            NavigationLink(destination: NewWyre_PaymentMethods()) {
                                HStack{
                                    Image("Wyre Icon").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 40).padding().background(ColorManager.wyrePurple).cornerRadius(7)
                                    VStack(alignment: .leading, spacing: 5.0){
                                        Text("Wyre Balance").font(.custom("Gotham-Bold", size: 16)).foregroundColor(Color.black)
                                        Text("$25.00").font(.custom("Gotham-Medium", size: 14)).foregroundColor(Color.gray)
                                    }.padding()
                                }
                            }.frame(height: 90)
                        } else {
                            
                        }
                        
                        
                        NavigationLink(destination: NewWyre_PrivacySettings(selectedTab: $selectedTab, selectedName: $selectedName)) {
                            HStack(alignment: .center){
                                Image(systemName: "lock").font(.system(size: 30, weight: .semibold)).frame(width: 40).padding().cornerRadius(7)
                                VStack(alignment: .leading, spacing: 5.0){
                                    Text("Private").font(.custom("Gotham-Bold" ,size: 16))
                                    Text("This \(selectedTab) will only be visible to you and \(self.selectedName).").foregroundColor(Color.gray).font(.custom("Gotham-Book" ,size: 14)).lineLimit(3)
                                }.padding()
                            }
                        }.frame(height: 90)
                    }
                }.navigationBarTitle("New Wyre", displayMode: .inline)            .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                
                
            }

            
            NewWyre_UsernameInput(selectedName: $selectedName, selectedImage: $selectedImage, showSuggestions: $showSuggestions)
            
            
            ZStack{
                VStack {
                    Spacer()
                    Button(action: {print("hello")}) {
                        Text("Next").frame(maxWidth: .infinity).padding(20).padding(.bottom, 25.0).background(ColorManager.wyrePurple).font(.custom("Gotham-Bold" ,size: 16)).multilineTextAlignment(.center).foregroundColor(Color.white)
                    }
                }
            }.edgesIgnoringSafeArea(.bottom)

        }
        
        
    }
}
    

struct NewWyreForm_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreForm(showSuggestions: false, selectedTab: .constant("payment"))
    }
}
