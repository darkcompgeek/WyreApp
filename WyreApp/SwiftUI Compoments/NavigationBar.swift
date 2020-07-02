//
//  NavigationBar.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/28/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NavigationBar: View {
    @ObservedObject var viewRouter: ViewRouter
    @State private var showingSheet = false
    var body: some View {
        //this is for the Navigation Bar.
               ZStack{
                   RoundedRectangle(cornerRadius: 15)
                       .fill(Color.white)
                       .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                   VStack(alignment: .center){
                       HStack(alignment: .center, spacing: 0.0){
                           Spacer()
        //Home Tab
                        Button(action: {                                self.viewRouter.currentView = "home"}) {
            if viewRouter.currentView == "home"{
                Image("home")
                    .foregroundColor(Color.black)
                    .aspectRatio(contentMode: .fit)
                   
                } else if viewRouter.currentView == "settings"{
            Image("home")
             .renderingMode(.original)
             .aspectRatio(contentMode: .fit)
        }
                    }.padding()

        //New Wyre Button
                            Button(action: {
                                print("Hello button tapped!")
                                self.showingSheet.toggle()
                            }) {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 100)
                                        .fill(ColorManager.wyrePurple)
                                        .padding(10)
                                       .frame(width: 150, height: 75)
                            
                                    Image("Wyre Icon")
                                        .foregroundColor(Color.white)
                                }
                                
                            }
                            .padding(.horizontal, 25.0)
                            .sheet(isPresented: $showingSheet) {
                                NewWyreFormSheet()
                            }
        //Me Tab
                        Button(action: {                           self.viewRouter.currentView = "settings"}) {
                            if viewRouter.currentView == "settings"{
                                    Image("person")
                                    .foregroundColor(Color.black)
                                    .aspectRatio(contentMode: .fit)
                                } else if viewRouter.currentView == "home"{
                                Image("person").renderingMode(.original).aspectRatio(contentMode: .fit)
                        }

                            }.padding()
                        Spacer()
                       }
                        Spacer()
                   }.overlay(
                       RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 0.5)
                   )
               }.frame(height: 90)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(viewRouter: ViewRouter())
    }
}
