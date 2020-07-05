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




struct NewWyre_SuggestionList: View {
    @Binding var selectedImage: String
    @Binding var selectedName: String
    @Binding var username: String
    @Binding var showSuggestionsThree: Bool
    @ObservedObject var selected = UserSelection()
    @ObservedObject var fetcher = SuggestionFetcher()
    var body: some View {
        
        List(fetcher.suggestions.filter({ username.isEmpty ? true : $0.fullName.contains(username)})){ suggestion in
                    Button(action: {
                        self.selected.users.append(SelectedUser(fullName: suggestion.fullName, imageNumber: suggestion.imageNumber))
                        print(self.selected.users)
                        self.showSuggestionsThree.toggle()
                        
                    }){
                        VStack{
                                HStack{
                                    Image(suggestion.imageNumber).renderingMode(.original)
                                    .resizable()
                                        .clipShape(Circle())
                                        .frame(width: 35, height: 35)
                                    VStack(alignment: .leading, spacing: 3.5){
                                        
                                        Text(suggestion.fullName)
                                        .font(.custom("Gotham-Medium", size: 14))
                                            .foregroundColor(Color.black)
                                        Text(suggestion.userName)
                                            .font(.custom("Gotham-Book", size: 14)).foregroundColor(Color.gray)
                                    }
                                    Spacer()
                                    Image(systemName: "info.circle")
                                        .font(.system(size: 22, weight: .semibold)).foregroundColor(Color.gray)
                                }
                        }.frame(height: 45)
                    }
    
                }.listStyle(GroupedListStyle())
    }
}




public class SuggestionFetcher: ObservableObject {
    @Published var suggestions = [SuggestionData]()
    
    init(){
        loadData()
    }
    
    func loadData(){
        let url = URL(string: "https://saikannekanti.com/wyreAppData/suggestionData.json")!
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do{
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([SuggestionData].self, from: d)
                    DispatchQueue.main.async{
                        self.suggestions = decodedLists
                    }
                } else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
        }.resume()
    }
}
struct SuggestionData: Codable, Identifiable {
    public var id: Int
    public var fullName: String
    public var userName: String
    public var imageNumber: String
    
    enum CodingKeys:String, CodingKey {
        case id = "id"
        case fullName = "fullName"
        case userName = "userName"
        case imageNumber = "imageNumber"
    }
}

public class UserSelection: ObservableObject {
    @Published var users = [SelectedUser]()
}

struct SelectedUser {
    public var fullName: String
    public var imageNumber: String
}

struct NewWyre_UsernameInput_Previews: PreviewProvider {
    @Binding var showSuggestions: Bool
    static var previews: some View {
        NewWyre_UsernameInput(username: "sdfa", selectedName: .constant("asdf"), selectedImage: .constant("001"), showSuggestionsTwo: .constant(true))
    }
}


