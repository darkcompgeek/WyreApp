//
//  ViewRouter.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 6/27/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ViewRouter: ObservableObject {
    //With the @Published property wrapper, we notify all observing views to update themselves whenever the currentView variable changes.
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    @Published var currentView:String = "home" {
        didSet {
            objectWillChange.send(self)
        }
    }
    
    
}
