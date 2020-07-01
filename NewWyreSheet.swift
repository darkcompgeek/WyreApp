//
//  NewWyreSheet.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/30/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyreSheet: View {
    @State var username: String = ""
        @State private var showingSheet = false
    var body: some View {
        VStack(spacing: 0.0){
                HStack{
                    Button(action: {
                        self.showingSheet.toggle()
                        }) {
                            Image(systemName: "xmark").font(.system(size: 22, weight: .semibold))
                        }
                    .foregroundColor(Color.white).padding()
                    Spacer()
                    HStack{
                        Button(action: {
                            print("pressed")
                            }) {
                        Text("Pay").foregroundColor(Color.white).font(.custom("Gotham-Bold", size: 20))
                            }.padding()
                        Button(action: {
                            print("pressed")
                            }) {
                        Text("Request").foregroundColor(Color.white).font(.custom("Gotham-Bold", size: 20))
                        }.padding().opacity(0.5)
                    }.padding(.leading, -30)
                    
                    Spacer()
                }.padding().frame(height: 70).background(ColorManager.wyrePurple)
            
            //username field
            HStack{
                Text("@").font(.custom("Gotham-Book", size: 25)).foregroundColor(Color.gray).padding()
                TextField("Type a name, username, or email address.", text: $username)
                    .padding(.vertical)
                    .font(.custom("Gotham-Book", size: 16))
                    .textFieldStyle(PlainTextFieldStyle()).frame(height: 60)
                Button(action: {print("hello")}){
                    Image(systemName: "qrcode.viewfinder").foregroundColor(Color.gray).font(.system(size: 22, weight: .semibold))
                }.padding()
                }.border(Color.gray, width: 0.5)

            List{
                VStack{
                    HStack{
                        Image("022")
                        .resizable()
                            .clipShape(Circle())
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading){
                            Text("Bridgette Smith")
                            .font(.custom("Gotham-Medium", size: 16))
                            Text("@bridgetteSmith")
                            .font(.custom("Gotham-Book", size: 16))
                        }
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.system(size: 22, weight: .semibold)).foregroundColor(Color.gray)
                    }
                    
                    
                }.frame(height: 60)
                
                
            }
            
        }
    }
}

struct NewWyreSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreSheet()
    }
}
