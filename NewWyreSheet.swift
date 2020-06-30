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
            VStack(spacing: 0.0){
                Rectangle().fill(ColorManager.wyrePurple)
                HStack{
                    Spacer()
                    Text("Pay").padding()
                    Text("Request").padding()
                    Spacer()
                }.background(ColorManager.wyrePurple)
            }.frame(height: 80)
            
            List{
                Text("Username")
            }
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct NewWyreSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreSheet()
    }
}
