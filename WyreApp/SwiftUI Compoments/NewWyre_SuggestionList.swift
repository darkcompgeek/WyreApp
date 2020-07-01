//
//  NewWyre_SuggestionList.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/1/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI
import Foundation
import Combine

        
struct NewWyre_SuggestionList: View {
    @ObservedObject var fetcher = SuggestionFetcher()
    
    var body: some View {
        
        VStack {
            List(fetcher.suggestions){ suggestion in
                VStack{
                    HStack{
                        Image(suggestion.imageNumber)
                        .resizable()
                            .clipShape(Circle())
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading){
                            Text(suggestion.fullName)
                            .font(.custom("Gotham-Medium", size: 16))
                            Text(suggestion.userName)
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

struct NewWyre_SuggestionList_Previews: PreviewProvider {
    static var previews: some View {
        NewWyre_SuggestionList()
    }
}
