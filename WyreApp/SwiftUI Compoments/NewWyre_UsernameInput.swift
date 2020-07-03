//
//  NewWyre_UsernameInput.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/3/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyre_UsernameInput: View {
    @Binding var showSuggestionsTwo:Bool
    
    var body: some View {
            VStack(spacing: 0.0){
                if showSuggestionsTwo {
                    NewWyre_UsernameField().background(Color.white)
                    NewWyre_SuggestionList(showSuggestionsThree: $showSuggestionsTwo)
                }
            }
    }
}

struct NewWyre_UsernameInput_Previews: PreviewProvider {
    @Binding var showSuggestions: Bool
    static var previews: some View {
        NewWyre_UsernameInput(showSuggestionsTwo: .constant(true))
    }
}
