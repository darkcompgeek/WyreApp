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
                                    Image(systemName: "gear")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 25))
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

struct HomePurpleBar_Previews: PreviewProvider {
    static var previews: some View {
        HomePurpleBar()
    }
}
