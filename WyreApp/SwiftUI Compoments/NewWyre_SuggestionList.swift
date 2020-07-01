//
//  NewWyre_SuggestionList.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/1/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyre_SuggestionList: View {
    var body: some View {
        List{
            VStack{
                HStack{
                    Image("022")
                    .resizable()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                    VStack(alignment: .leading){
                        Text("Bridgette Smith")
                        .font(.custom("Gotham-Medium", size: 16))
                        Text("@bridgetteSmith")
                        .font(.custom("Gotham-Book", size: 16))
                    }
                    Spacer()
                    Image(systemName: "info.circle")
                        .font(.system(size: 22, weight: .semibold)).foregroundColor(Color.gray)
                }
                
                
            }.frame(height: 60)
            
            
        }
    }
}

struct NewWyre_SuggestionList_Previews: PreviewProvider {
    static var previews: some View {
        NewWyre_SuggestionList()
    }
}
