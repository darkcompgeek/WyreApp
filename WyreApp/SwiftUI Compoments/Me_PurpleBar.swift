//
//  Me_PurpleBar.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/30/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct Me_PurpleBar: View {
    var body: some View {
        
        VStack(spacing: 0.0){
            HStack{
                                Spacer()
                                Button(action: {
                                    print("Hello button tapped!")
                                }) {
                                    Image("settings")
                                        .foregroundColor(Color.white)
                                        .padding(20)
                                }
            }.background(
                                ColorManager.wyrePurple
                            )
                            VStack{
                                Image("sai")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 150, height: 150)
                                VStack(spacing: 5.0){
                                    Text("Sai Kannekanti")
                                        .font(.custom("Gotham-Bold", size: 20))
                                        .foregroundColor(Color.white)
                                    
                                    Text("@darkcompgeek")
                                        .font(.custom("Gotham-Medium", size: 16))
                                        .foregroundColor(Color.white)
                                }

                            }.padding(.top, -40.0)
            .padding()
                            
            }
        .background(ColorManager.wyrePurple)
        

    }
}

struct Me_PurpleBar_Previews: PreviewProvider {
    static var previews: some View {
        Me_PurpleBar()
    }
}
