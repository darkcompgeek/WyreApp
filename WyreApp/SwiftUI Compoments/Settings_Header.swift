//
//  Settings_Header.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/2/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct Settings_Header: View {
    @State private var showingSheet = false
    var body: some View {

        ZStack{
            HStack{
                Button(action: {
                    self.showingSheet.toggle()
                    }) {
                        Image(systemName: "xmark").font(.system(size: 22, weight: .semibold))
                    }.foregroundColor(Color.white).padding()
                Spacer()
            }
            Text("Settings").foregroundColor(Color.white).font(.custom("Gotham-Bold", size: 20)).padding()
            Spacer()
        }.padding().frame(height: 70).background(ColorManager.wyrePurple)
    }
}

struct Settings_Header_Previews: PreviewProvider {
    static var previews: some View {
        Settings_Header()
    }
}
