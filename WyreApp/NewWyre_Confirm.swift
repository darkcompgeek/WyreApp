//
//  NewWyre_Confirm.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/5/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyre_Confirm: View {
    var body: some View {
        
        VStack(spacing: 0.0){
            Spacer()
            HStack{
                Spacer()
                Text("Is everything correct?").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                Spacer()
            }.background(ColorManager.wyreDarkPurple)
            
            
            VStack(spacing: 0.0){
                
                VStack{
                    HStack{
                        Spacer()
                        Text("Pay").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                        Spacer()
                    }.padding(10)
                    HStack(alignment: .center, spacing: 0.0){
                        Image("001")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 30, height: 30)
                        Text("Allison Copeland").font(.custom("Gotham-Medium", size: 14))
                            .foregroundColor(Color.black)
                            .padding(.horizontal, 5.0)
                    }.padding(.vertical, 7.5).padding(.horizontal, 7.0).background(Color.white).cornerRadius(25)
                }.padding(.bottom, 15)
                
                VStack{
                    HStack{
                    Spacer()
                      Text("$25").font(.custom("Gotham-Black", size: 50))
                        Spacer()
                    }.padding()
                    HStack{
                    Spacer()
                      Text("cool caption").font(.custom("Gotham-Medium", size: 16))
                        Spacer()
                    }.padding()
                    }.padding().background(Color.white)
                
                VStack(spacing: 10.0){
                    HStack(spacing: 25){
                        Spacer()
                        Image("Wyre Icon").resizable().aspectRatio(contentMode: .fit).frame(width: 40).padding(10).background(ColorManager.wyrePurple).cornerRadius(10)
                       Text("Wyre Balance").font(.custom("Gotham-Medium", size: 16))
                        Spacer()
                    }
                    HStack(spacing: 25){
                        Spacer()
                        Image(systemName: "lock").font(.system(size:20, weight: .bold)).frame(width: 40).padding(10)
                       Text("Private").font(.custom("Gotham-Medium", size: 16))
                        Spacer()
                    }
                    }.padding().background(ColorManager.wyreGray)
                   
                Button(action: {print("Edit")}) {
                    HStack(alignment: .center, spacing: 5.0){
                        Image(systemName: "pencil").font(.system(size: 22, weight: .bold)).foregroundColor(Color.white)
                       Text("Edit").background(ColorManager.wyrePurple).font(.custom("Gotham-Bold" ,size: 16)).multilineTextAlignment(.center).foregroundColor(Color.white)
                    }.padding().frame(maxWidth: .infinity)
                }.background(ColorManager.wyrePurple)
                
                
                
            }.background(ColorManager.wyrePurple).cornerRadius(25).padding()
            Spacer()
        }.background(ColorManager.wyreDarkPurple)
    }
}

struct NewWyre_Confirm_Previews: PreviewProvider {
    static var previews: some View {
        NewWyre_Confirm()
    }
}
