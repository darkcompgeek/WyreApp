//
//  FeedList.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/28/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct PostContent{
    var title: String
    var caption: String
    var time: String
    var likeCount: Int
    var profileLeft: String
    var profileRight: String
}

struct FeedList: View {
    //each feed post that goes in the list
    var postList = [
        PostContent(title: "You paid Gari", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "sai", profileRight: "002"),
        PostContent(title: "You paid Dalia", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "003", profileRight: "004"),
        PostContent(title: "You paid Dalia", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "005", profileRight: "006"),
        PostContent(title: "You paid Dalia", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "007", profileRight: "008"),
        PostContent(title: "You paid Dalia", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "009", profileRight: "010"),
        PostContent(title: "You paid Dalia", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "011", profileRight: "012"),
        PostContent(title: "You paid Dalia", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "013", profileRight: "014"),
        PostContent(title: "You paid Dalia", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "015", profileRight: "016"),
        PostContent(title: "You paid Dalia", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "017", profileRight: "018"),
        PostContent(title: "You paid Dalia", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "019", profileRight: "020"),
        PostContent(title: "You paid Dalia", caption: "now this is epic", time: "2m", likeCount: 1, profileLeft: "021", profileRight: "022"),

    ]
    
    var body: some View {
        List(postList, id: \.title) { PostContent in
            HStack(alignment: .center){
                VStack(alignment: .center){
                        Image(systemName: "globe")
                        Text("\(PostContent.time)").font(.custom("Gotham-Book", size: 16))
                    }
                    
                    Spacer().frame(width: 50)
                    
                VStack(alignment: .center){
                        Text("\(PostContent.title)")
                            .font(.custom("Gotham-Medium", size: 16))
                            .multilineTextAlignment(.center)
                        
                    HStack(alignment: .center){
                            Image("\(PostContent.profileLeft)").resizable()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            Rectangle()
                                .foregroundColor(ColorManager.wyrePurple)
                                .frame(height: 2)
                            Image("\(PostContent.profileRight)").resizable()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        }
                        
                        Text("\(PostContent.caption)")
                            .font(.custom("Gotham-Book", size: 16))
                            .multilineTextAlignment(.center)
                    }
                    
                    Spacer().frame(width: 50)
                    
                    HStack{
                            Image(systemName: "heart")
                        Text("\(PostContent.likeCount)").font(.custom("Gotham-Book", size: 16))
                    }
                    
                }
                .padding()
        }    }

struct FeedList_Previews: PreviewProvider {
    static var previews: some View {
        FeedList()
    }
}
}
