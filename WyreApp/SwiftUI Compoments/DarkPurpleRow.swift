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
                            Button(action: {
                                print("Hello button tapped!")
                            }) {
                                Text("ADD FUNDS")
                                    .foregroundColor(Color.white)
                                    .font(.custom("Gotham-Medium", size: 16))
                                    .padding(20)
                                    .frame(maxWidth: .infinity)
                            }.background(ColorManager.wyreDarkPurple)
                            
                            Button(action: {
                                print("Hello button tapped!")
                            }) {
                                Text("MOVE TO BANK")
                                    .font(.custom("Gotham-Medium", size: 16))
                                    .foregroundColor(Color.white)
                                    .padding(20)
                                    .frame(maxWidth: .infinity)
                                }
                                .background(ColorManager.wyreDarkPurple)
                            
                        }
    }
}

struct DarkPurpleRow_Previews: PreviewProvider {
    static var previews: some View {
        DarkPurpleRow()
    }
}
