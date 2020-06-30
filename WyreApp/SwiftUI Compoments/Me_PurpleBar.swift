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
                                VStack{
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
                            VStack(alignment: .leading){
                                Spacer()
                                HStack{
                                    Text("WYRE BALANCE")
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.leading)
                                        .font(.custom("Gotham-Bold", size: 16))
                                        .lineLimit(1)
                                        .padding(.bottom, 5.0)
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
        }
    }
}

struct Me_PurpleBar_Previews: PreviewProvider {
    static var previews: some View {
        Me_PurpleBar()
    }
}
