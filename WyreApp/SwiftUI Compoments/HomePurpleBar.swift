//
//  HomePurpleBar.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/28/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct HomePurpleBar: View {
    var body: some View {
                        VStack{
            HStack{
                                Spacer()
                                Button(action: {
                                    print("Hello button tapped!")
                                }) {
                                    Text("Settings")
                                        .foregroundColor(Color.white)
                                        .padding(20)
                                }
            }.background(
                                ColorManager.wyrePurple
                            )
                            VStack(alignment: .leading){
                                Spacer()
                                HStack{
                                    Text("BALANCE")
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.leading)
                                        .font(.custom("Gotham-Bold", size: 16))
                                        .lineLimit(1)
                                    Spacer()
                                }
                                HStack {
                                    Text("$25.00")
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.leading)
                                        .font(.custom("Gotham-Black", size: 50))
                                        .lineLimit(1)
                                    Spacer()
                                }
                            }
                                .padding(.bottom, 15.0)
                            .padding(.leading, 25)
                                .background(ColorManager.wyrePurple)
            //ADD FUNDS AND MOVE TO BANK BUTTON ROW
                            HStack(alignment: .center, spacing: 0.0){
                                Button(action: {
                                    print("Hello button tapped!")
                                }) {
                                    Text("ADD FUNDS")
                                        .foregroundColor(Color.white)
                                        .font(.custom("Gotham-Medium", size: 16))
                                        .padding(20)
                                }.background(ColorManager.wyreDarkPurple)
                                Button(action: {
                                    print("Hello button tapped!")
                                }) {
                                    Text("MOVE TO BANK")
                                        .font(.custom("Gotham-Medium", size: 16))
                                        .foregroundColor(Color.white)
                                        .padding(20)
                                    }
                                    .background(ColorManager.wyreDarkPurple)
                            }
        }
    }
}

struct HomePurpleBar_Previews: PreviewProvider {
    static var previews: some View {
        HomePurpleBar()
    }
}
