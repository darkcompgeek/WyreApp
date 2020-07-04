//
//  Me_DarkPurpleRow.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/30/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct Me_DarkPurpleRow: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0.0){
                                    Spacer()
                                        Button(action: {
                                            print("Hello button tapped!")
                                        }) {
                                            Text("21 FRIENDS")
                                                .foregroundColor(Color.white)
                                                .font(.custom("Gotham-Medium", size: 14))
                                                .frame(maxWidth: .infinity)
                                        }.padding(15)
                                        .background(ColorManager.wyreDarkPurple)
                                    
                                    
                                    
                                        Button(action: {
                                            print("Hello button tapped!")
                                        }) {
                                            Text("FIND FRIENDS")
                                                .font(.custom("Gotham-Medium", size: 14))
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                            }.padding(15)          .background(ColorManager.wyreDarkPurple)
                                    
        Spacer()
                                    
                                }.background(ColorManager.wyreDarkPurple)
    }
}

struct Me_DarkPurpleRow_Previews: PreviewProvider {
    static var previews: some View {
        Me_DarkPurpleRow()
    }
}
