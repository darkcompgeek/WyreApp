//
//  NewWyreFormSheet.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/2/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyreFormSheet: View {

        @State private var showingSheet = false
    var body: some View {
        NavigationView{
            Form{
                NewWyre_UsernameField().padding(0)
            
                Section{
                    NewWyreAmountField()
                }
                Section{
                    NavigationLink(destination: Text("Payment Methods")) {
                        HStack{
                            Image(systemName: "lock").font(.system(size: 30, weight: .semibold)).padding()
                            VStack(alignment: .leading, spacing: 4.0){
                                Text("Payment Method").font(.custom("Gotham-Bold" ,size: 16))
                                 Text("Wyre Balance").font(.custom("Gotham-Book" ,size: 16))
                            }
                        }
                        }.frame(height: 100)
                    
                    
                    
                        NavigationLink(destination: Text("Privacy Options")) {
                            HStack{
                                Image(systemName: "lock").font(.system(size: 30, weight: .semibold)).padding()
                                VStack(alignment: .leading, spacing: 4.0){
                                    Text("Privacy Options").font(.custom("Gotham-Bold" ,size: 16))
                                    Text("Private").font(.custom("Gotham-Book" ,size: 16))
                                }
                            }
                            }.frame(height: 100)
                }
                Button(action: {print("hello")}) {
                    Text("Next").font(.custom("Gotham-Bold" ,size: 20)).multilineTextAlignment(.center).padding().foregroundColor(ColorManager.wyrePurple)
                }
            }.navigationBarTitle("New Wyre")
            .navigationBarItems(leading:
            Button(action: {
                self.showingSheet.toggle()
                }) {
                    Image(systemName: "xmark").font(.system(size: 22, weight: .semibold)).foregroundColor(Color.white)
                }
            )

        }
        

    }
}

struct NewWyreFormSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreFormSheet()
    }
}
