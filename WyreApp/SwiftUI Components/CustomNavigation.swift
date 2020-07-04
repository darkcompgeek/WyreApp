//
//  NewWyre_Header.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/1/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyre_Header: View {
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    NavigationLink(destination: NavigationTest()) {
                        Text("Test Link")
                    }
                }
            }.navigationBarTitle(Text("Title"), displayMode: .inline)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct NavigationTest: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var btnBack : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .font(.title)
        }
    }
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    btnBack.padding(.leading, 10)
                    Spacer()
                }
                Spacer()
                
                Text("Test View")
                Spacer()
                
            }.navigationBarTitle(Text("Other Title"), displayMode: .inline)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}




struct NewWyre_Header_Previews: PreviewProvider {
    static var previews: some View {
        NewWyre_Header()
    }
}
