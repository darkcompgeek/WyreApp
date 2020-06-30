//
//  MeTab.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/29/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct MeTab: View {
            @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        Text("me tab")
    }
}

struct MeTab_Previews: PreviewProvider {
    static var previews: some View {
        MeTab(viewRouter: ViewRouter())
    }
}
