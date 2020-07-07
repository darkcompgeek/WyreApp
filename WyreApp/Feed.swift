//
//  FeedList.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/28/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI
import Foundation
import Combine


struct Feed: View {
        @State private var selectedTab = "public"
    var body: some View {
        VStack(spacing: 0.0){
            FeedTabBar(selectedTab: $selectedTab)
            FeedList()
        }
    }
}


struct FeedList: View {
@ObservedObject var fetcher = PostFetcher()
    var body: some View {
        
        List(fetcher.posts){ post in
            HStack(alignment: .center){
                VStack(alignment: .center){
                        Image(systemName: "globe").font(.system(size: 16.0))
                    Text(post.time).font(.custom("Gotham-Book", size: 14))
                    }
                    
                    Spacer().frame(width: 50)
                    
                VStack(alignment: .center){
                    Text(post.title)
                            .font(.custom("Gotham-Medium", size: 14))
                            .multilineTextAlignment(.center)
                        
                    HStack(alignment: .center){
                        Image(post.profileLeft).resizable()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            Rectangle()
                                .foregroundColor(ColorManager.wyrePurple)
                                .frame(height: 2)
                        Image(post.profileRight).resizable()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        }
                        
                    Text(post.caption)
                            .font(.custom("Gotham-Book", size: 14))
                            .multilineTextAlignment(.center)
                }
                .lineSpacing(3.0)
                    
                    Spacer().frame(width: 50)
                    
                HStack(alignment: .center){
                            Image(systemName: "heart").font(.system(size: 16.0))
                    Text("\(post.likeCount)").font(.custom("Gotham-Book", size: 14))
                    }
                    
                }
                .padding(15)
        }
        
    }
}

    struct FeedTabBar: View {
    @Binding var selectedTab: String
        @State private var publicIsSelected = true
    var body: some View {
        HStack{
            Spacer()
            VStack(spacing: 0.0) {
                HStack{
                    Button(action: {
                        self.selectedTab = "public"
                        self.publicIsSelected = true
                    }) {
                        Text("Public").font(.custom("Gotham-Bold", size: 16)).padding(.horizontal).padding(.vertical, 8.0).foregroundColor(Color.black).opacity(self.publicIsSelected ? 1.0 : 0.5)
                    }
                    Button(action: {
                        self.selectedTab = "friends"
                        self.publicIsSelected = false
                    }) {
                        Text("Friends").font(.custom("Gotham-Bold", size: 16)).padding(.horizontal).padding(.vertical, 8.0).foregroundColor(Color.black).opacity(self.publicIsSelected ? 0.5 : 1.0)
                    }
                }
                Rectangle().frame(width: self.publicIsSelected ? 50 : 60, height: 3.5).cornerRadius(15).offset(x:self.publicIsSelected ? -51 : 45).animation(.easeOut(duration: 0.20))
            }

            Spacer()
        }.padding(10)
        }
    }
    


    
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
    
    
struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}

