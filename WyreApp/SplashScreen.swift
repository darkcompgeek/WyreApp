//
//  SplashScreen.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/9/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI

struct SplashScreen: View {
  static var shouldAnimate = true

  
  var body: some View {
    VStack {
        Spacer()
        
        HStack {
            Spacer()
            Image("wyreSplashScreen")
            Spacer()
        }
        Spacer()
    }.background(ColorManager.wyrePurple).edgesIgnoringSafeArea(.all)
  }
}

extension SplashScreen {
  var uAnimationDuration: Double { return 1.0 }
  var uAnimationDelay: Double { return  0.2 }
  var uExitAnimationDuration: Double { return 0.3 }
  var finalAnimationDuration: Double { return 0.4 }
  var minAnimationInterval: Double { return 0.1 }
  var fadeAnimationDuration: Double { return 0.4 }
  
  func handleAnimations() {

  }
    
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
