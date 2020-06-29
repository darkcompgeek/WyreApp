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

}

struct FeedList: View {
    //each feed post that goes in the list
    var postList = [
//        PostContent(title: "You paid Dalia", caption: "amazing", time: "2m", likeCount: 1),
        PostContent(title: "Sai paid Dalia", caption: "amazing", time: "10m", likeCount: 2),
        PostContent(title: "Sai paid Dalia", caption: "amazing", time: "2m", likeCount: 1),
        PostContent(title: "Sai paid Dalia", caption: "amazing", time: "2m", likeCount: 1),
        PostContent(title: "Sai paid Dalia", caption: "amazing", time: "2m", likeCount: 1),
        PostContent(title: "Sai paid Dalia", caption: "amazing", time: "2m", likeCount: 1),
        PostContent(title: "Sai paid Dalia", caption: "amazing", time: "2m", likeCount: 1),
        PostContent(title: "Sai paid Dalia", caption: "amazing", time: "2m", likeCount: 1),
        PostContent(title: "Sai paid Dalia", caption: "amazing", time: "2m", likeCount: 1),
        PostContent(title: "Sai paid Dalia", caption: "amazing", time: "2m", likeCount: 1),
        PostContent(title: "Sai paid Dalia", caption: "amazing", time: "2m", likeCount: 1),

    ]
    
    var body: some View {
        List(postList, id: \.title) { PostContent in
                HStack{
                    VStack{
                        Image(systemName: "globe")
                        Text("\(PostContent.time)").font(.custom("Gotham-Book", size: 16))
                    }
                    Spacer().frame(width: 50)
                    VStack{
                        Text("\(PostContent.title)")
                            .font(.custom("Gotham-Medium", size: 16))
                            .multilineTextAlignment(.center)
                        HStack{
                            Circle().frame(height: 40)
                            Rectangle()
                                .foregroundColor(ColorManager.wyrePurple)
                                .frame(height: 2)
                            Circle()

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
