//
//  DarkPurpleRow.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/28/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct DarkPurpleRow: View {
    var body: some View {
                        HStack(alignment: .center, spacing: 0.0){
                            Spacer()
                                Button(action: {
                                    print("Hello button tapped!")
                                }) {
                                    Image("coin")
                                        .foregroundColor(Color.white)
                                    Text("ADD FUNDS")
                                        .foregroundColor(Color.white)
                                        .font(.custom("Gotham-Medium", size: 14))
                                        .frame(maxWidth: .infinity)
                                }.padding(15)
                                .background(ColorManager.wyreDarkPurple)
                            
                            
                            
                                Button(action: {
                                    print("Hello button tapped!")
                                }) {
                                    Image("bank")
                                    .foregroundColor(Color.white)
                                    Text("MOVE TO BANK")
                                        .font(.custom("Gotham-Medium", size: 14))
                                        .foregroundColor(Color.white)
                                        .frame(maxWidth: .infinity)
                                    }.padding(15)          .background(ColorManager.wyreDarkPurple)
                            
Spacer()
                            
                        }.background(ColorManager.wyreDarkPurple)
    }
}

struct DarkPurpleRow_Previews: PreviewProvider {
    static var previews: some View {
        DarkPurpleRow()
    }
}
