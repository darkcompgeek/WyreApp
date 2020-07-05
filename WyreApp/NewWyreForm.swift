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
    var body: some View {
        ZStack{
            VStack(spacing: 0.0) {
                    VStack(alignment: .center){
                            HStack(alignment: .center){
                                Spacer()
                                
                                if selected.users.count > 1 {
                                    ScrollView(.horizontal){
                                        HStack{
                                            ForEach(selected.users, id: \.imageNumber){ user in
                                                    HStack(alignment: .center, spacing: 0.0){
                                                        
                                                        Image(user.imageNumber)
                                                        .resizable()
                                                            .clipShape(Circle())
                                                            .frame(width: 30, height: 30)
                                                        
                                                        Text(user.fullName).font(.custom("Gotham-Medium", size: 14))
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
                                                Image(systemName: "plus").foregroundColor(Color.black).font(.system(size:15, weight: .semibold))
                                                
                                                }.padding().background(Color.white).cornerRadius(100)

                               }
                                    }

                                } else {
                                    HStack{
                                        ForEach(selected.users, id: \.imageNumber){ user in
                                                         HStack(alignment: .center, spacing: 0.0){
                                                             
                                                             Image(user.imageNumber)
                                                             .resizable()
                                                                 .clipShape(Circle())
                                                                 .frame(width: 30, height: 30)
                                                             
                                                             Text(user.fullName).font(.custom("Gotham-Medium", size: 14))
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
                                                     Image(systemName: "plus").foregroundColor(Color.black).font(.system(size:15, weight: .semibold))
                                                     
                                                     }.padding().background(Color.white).cornerRadius(100)

                                    }

                                    
                                }
                        
                                
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
                                    Text("This payment will only be visible to you and \(self.selectedName).").foregroundColor(Color.gray).font(.custom("Gotham-Book" ,size: 14))
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
            NewWyre_UsernameInput(selectedName: $selectedName, selectedImage: $selectedImage, showSuggestionsTwo: $showSuggestions)
        
        }
        
    }
}

struct NewWyreForm_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreForm()
    }
}
