//
//  NewWyreFormSheet.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/2/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyreFormSheet: View {
    
    @State var showSuggestions = true
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView{
            //header
            VStack(spacing:0.0) {
                
                //NavigationBar
                HStack{
                    Button(action: {
                        self.mode.wrappedValue.dismiss()
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }) {
                            Image(systemName: "xmark").font(.system(size: 22, weight: .semibold)).foregroundColor(Color.white)
                    }
                    Spacer()
                    Button(action: {print("Pay Tab")}) {
                        Text("Pay").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                    }.padding()
                    
                    Button(action: {print("Request Tab")}) {
                        Text("Request").font(.custom("Gotham-Bold", size: 20)).foregroundColor(Color.white)
                    }.padding().opacity(0.5)
                    Spacer()
                }.padding().frame(height:70).background(ColorManager.wyrePurple)

                ZStack{
                   NewWyreForm()
                    NewWyre_UsernameInput(showSuggestionsTwo: $showSuggestions)

                }
            }

        }
        

    }
}


struct NewWyreFormSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreFormSheet()
    }
}
