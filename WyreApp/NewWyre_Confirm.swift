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
        
        VStack{
            Spacer()
            HStack{
                Spacer()
                Text("Is everything correct?").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                Spacer()
            }.background(ColorManager.wyreDarkPurple)
            Spacer()
            VStack{
                HStack{
                    Spacer()
                     Text("Pay").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                    Spacer()
                    
                }
                    
                }.frame(height: 500).background(ColorManager.wyrePurple).cornerRadius(25).padding()
            Spacer()
        }.background(ColorManager.wyreDarkPurple)
    }
}

struct NewWyre_Confirm_Previews: PreviewProvider {
    static var previews: some View {
        NewWyre_Confirm()
    }
}
