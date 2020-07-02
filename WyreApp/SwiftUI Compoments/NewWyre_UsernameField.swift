//
//  NewWyre_UsernameField.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/1/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyre_UsernameField: View {
    @State var username: String = ""
    var body: some View {
        
        HStack{
            Text("@").font(.custom("Gotham-Book", size: 25)).foregroundColor(Color.gray).padding()
            TextField("Type a name, username, or email address.", text: $username)
                .padding(.vertical)
                .font(.custom("Gotham-Book", size: 16))
            Button(action: {print("hello")}){
                Image(systemName: "qrcode.viewfinder").foregroundColor(Color.gray).font(.system(size: 22, weight: .semibold))
            }.padding()
            }
    }
}

struct NewWyre_UsernameField_Previews: PreviewProvider {
    static var previews: some View {
        NewWyre_UsernameField()
    }
}
