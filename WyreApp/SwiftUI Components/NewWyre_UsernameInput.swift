//
//  NewWyre_UsernameInput.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/3/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct NewWyre_UsernameInput: View {
    @State var username: String = ""
    @Binding var selectedName: String
    @Binding var selectedImage: String
    @Binding var showSuggestionsTwo:Bool
    
    var body: some View {
            VStack(spacing: 0.0){
                if showSuggestionsTwo {
                    NewWyre_UsernameField(username: $username).background(Color.white)
                    NewWyre_SuggestionList(selectedImage: $selectedImage, selectedName: $selectedName, username: $username, showSuggestionsThree: $showSuggestionsTwo)
                }
            }
    }
}

struct NewWyre_UsernameInput_Previews: PreviewProvider {
    @Binding var showSuggestions: Bool
    static var previews: some View {
        NewWyre_UsernameInput(username: "sdfa", selectedName: .constant("asdf"), selectedImage: .constant("001"), showSuggestionsTwo: .constant(true))
    }
}
