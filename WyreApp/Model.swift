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
    public var user1: String
    public var user2: String
    public var caption: String
    public var privacy: String
    public var time: String
    public var likeCount: Int
    public var profileLeft: String
    public var profileRight: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case user1 = "user1"
        case user2 = "user2"
        case caption = "caption"
        case privacy = "privacy"
        case time = "time"
        case likeCount = "likeCount"
        case profileLeft = "profileLeft"
        case profileRight = "profileRight"
    }
    
}

//PUBLIC FEED POSTS

public class PostFetcher: ObservableObject {
    @Published var posts = [Post]()
    
    init(){
        loadData()
    }
    
    func loadData(){
        let url = URL(string: "https://saikannekanti.com/wyreAppData/feedListPublic.json")!
        
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

//FRIENDS FEED POSTS

public class FriendPostFetcher: ObservableObject {
    @Published var posts = [Post]()
    
    init(){
        loadData()
    }
    
    func loadData(){
        let url = URL(string: "https://saikannekanti.com/wyreAppData/feedListFriends.json")!
        
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

// RECENT SUGGESTIONS

public class RecentsFetcher: ObservableObject {
    @Published var recentSuggestions = [SuggestionData]()
    
    init(){
        loadData()
    }
    
    func loadData(){
        let url = URL(string: "https://saikannekanti.com/wyreAppData/recentUserData.json")!
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do{
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([SuggestionData].self, from: d)
                    DispatchQueue.main.async{
                        self.recentSuggestions = decodedLists
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
    public var firstName: String
    public var lastName: String
    public var userName: String
    public var imageNumber: String
    
    enum CodingKeys:String, CodingKey {
        case id = "id"
        case firstName = "firstName"
        case lastName = "lastName"
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
