//
//  Model.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/13/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import Foundation


//FEED POSTS


struct Post: Codable, Identifiable{
    public var id: Int
    public var title: String
    public var caption: String
    public var time: String
    public var likeCount: Int
    public var profileLeft: String
    public var profileRight: String
    
    enum CodingKeys: String, CodingKey {
           case id = "id"
           case title = "title"
           case caption = "caption"
        case time = "time"
        case likeCount = "likeCount"
        case profileLeft = "profileLeft"
        case profileRight = "profileRight"
        }
    
}

public class PostFetcher: ObservableObject {
    @Published var posts = [Post]()
    
    init(){
        loadData()
        }
    
    func loadData(){
        let url = URL(string: "https://saikannekanti.com/wyreAppData/feedListHome.json")!
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Post].self, from: d)
                    DispatchQueue.main.async {
                        self.posts = decodedLists
                    }
                } else {
                    print("No Data")
                }
            } catch {
                print("Error")
            }
            
            
        }.resume()
    }
    }


// END OF FEED POSTS

// SUGGESTIONS


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


// END OF SUGGESTIONS
