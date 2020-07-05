//
//  NewWyre_PrivacySettings.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/3/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyre_PrivacySettings: View {
    
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
                        HStack(alignment: .center){
                            Image(systemName: "lock").font(.system(size: 20, weight: .semibold))
                            VStack(alignment: .leading){
                                Text("Private").font(.custom("Gotham-Bold", size: 16))
                                Text("This payment will only be visible to you.").font(.custom("Gotham-Medium", size: 14)).foregroundColor(Color.gray)
                                
                            }.padding()
                            
                                Image(systemName: "checkmark")
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
        NewWyre_PrivacySettings()
    }
}
