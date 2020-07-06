//
//  NewWyre_PrivacySettings.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/3/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyre_PrivacySettings: View {
    @Binding var selectedTab: String
    @Binding var selectedName: String
    @Binding var selectedPrivacy: String
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
                    Text("Privacy Options").font(.custom("Gotham-Bold", size: 18)).foregroundColor(Color.white)
                    Spacer()
                }.padding().frame(height:60).background(ColorManager.wyrePurple)
                
                
                List{
                    Section(footer: Text("Wyre takes great steps to ensure your privacy. For more information, view our Privacy Policy.").font(.custom("Gotham-Book", size: 12))){
                        
                        Button(action: {
                            self.selectedPrivacy = "public"
                        }) {
                            HStack(alignment: .center){
                                Image(systemName: "globe").foregroundColor(Color.black).font(.system(size: 30)).frame(width: 40).padding().cornerRadius(7)
                                VStack(alignment: .leading, spacing: 5.0){
                                    Text("Public").font(.custom("Gotham-Bold", size: 16)).foregroundColor(Color.black)
                                    Text("This \(selectedTab) will be public and anyone on the Wyre app can see it.").font(.custom("Gotham-Book", size: 14)).foregroundColor(Color.gray)
                                    
                                }.padding()
                                if self.selectedPrivacy == "public" {
                                    Spacer()
                                        Image(systemName: "checkmark").font(.system(size: 20, weight: .bold)).foregroundColor(ColorManager.wyrePurple)
                                } else {
                                    
                                }
                                    
                            }
                        }
                        

                        Button(action:{
                            self.selectedPrivacy = "friends"
                        }) {
                            HStack(alignment: .center){
                                Image(systemName: "person").font(.system(size: 30, weight: .semibold)).frame(width: 40).padding().cornerRadius(7).foregroundColor(Color.black)
                                VStack(alignment: .leading, spacing: 5.0){
                                    Text("Friends Only").font(.custom("Gotham-Bold", size: 16)).foregroundColor(Color.black)
                                    Text("This \(selectedTab) will be visible to your friends.").font(.custom("Gotham-Book", size: 14)).foregroundColor(Color.gray)
                                    
                                }.padding()
                                if self.selectedPrivacy == "friends" {
                                    Spacer()
                                        Image(systemName: "checkmark").font(.system(size: 20, weight: .bold)).foregroundColor(ColorManager.wyrePurple)
                                } else {
                                    
                                }
                            }
                        }
                        Button(action:{
                            self.selectedPrivacy = "private"
                        }) {
                            HStack(alignment: .center){
                                Image(systemName: "lock").foregroundColor(Color.black).font(.system(size: 30, weight: .semibold)).frame(width: 40).padding().cornerRadius(7)
                                VStack(alignment: .leading, spacing: 5.0){
                                    Text("Private").font(.custom("Gotham-Bold", size: 16)).foregroundColor(Color.black)
                                    Text("This \(selectedTab) will only be visible to you and \(selectedName).").font(.custom("Gotham-Book", size: 14)).foregroundColor(Color.gray)
                                    
                                }.padding()
                                if self.selectedPrivacy == "private" {
                                    Spacer()
                                        Image(systemName: "checkmark").font(.system(size: 20, weight: .bold)).foregroundColor(ColorManager.wyrePurple)
                                } else {
                                    
                                }

                            }
                        }
                    }
                }.listStyle(GroupedListStyle())
                
            }.navigationBarTitle(Text("Other Title"), displayMode: .inline)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct NewWyre_PrivacySettings_Previews: PreviewProvider {
    static var previews: some View {
        NewWyre_PrivacySettings(selectedTab: .constant("payment"), selectedName: .constant("Allison Copeland"), selectedPrivacy: .constant("private"))
    }
}
