//
//  NewWyreAmountField.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/2/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyreAmountField: View {
        @State private var text = ""
    
    var body: some View {
        VStack{
           Text("Amount").font(.custom("Gotham-Bold", size:  14))
             
        TextField("$0", text: $text)
                .padding()
                .font(.custom("Gotham-Black", size:  75))
                .textFieldStyle(PlainTextFieldStyle())
                .multilineTextAlignment(.center)
        Divider()
            TextField("Enter a caption", text: $text)
                    .padding()
                    .font(.custom("Gotham-Medium", size:  14))
                    .textFieldStyle(PlainTextFieldStyle())
                    .multilineTextAlignment(.center)
        }.padding(.top)
        
    }
}

struct NewWyreAmountField_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreAmountField()
    }
}