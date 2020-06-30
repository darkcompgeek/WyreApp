//
//  NewWyreSheet.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/30/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyreSheet: View {
    var body: some View {
        VStack(spacing: 0.0){
                HStack{
                    Button(action: {
                        print("lol")
                        }) {
                            Image(systemName: "xmark").font(.system(size: 25, weight: .semibold))
                        }
                    .foregroundColor(Color.white).padding()
                    Spacer()
                    Text("Pay").foregroundColor(Color.white).font(.custom("Gotham-Bold", size: 20)).padding()
                    Text("Request").foregroundColor(Color.white).font(.custom("Gotham-Bold", size: 20)).padding()
                    Spacer()
                }.frame(height: 60).background(ColorManager.wyrePurple)
            List{
                Text("Username")
            }
            
        }
    }
}

struct NewWyreSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreSheet()
    }
}
