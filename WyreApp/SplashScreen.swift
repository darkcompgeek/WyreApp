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
    @State var logoOpacity = 1.0
    @State var slideUpBar = false
    
    var body: some View {
        ZStack {
            VStack{
                Rectangle().foregroundColor(ColorManager.wyrePurple).edgesIgnoringSafeArea(.all).frame(maxHeight: slideUpBar ? 180 : .infinity)
                Spacer()
            }
            Image("wyreSplashScreen").opacity(logoOpacity)
        }.edgesIgnoringSafeArea(.all)
        .onAppear() {
            self.handleAnimations()
        }
    }
}

extension SplashScreen {
    
    func handleAnimations() {
        fadeOutLogo()
        slideUpPurpleBar()
    }
    
    func fadeOutLogo(){
        withAnimation(.timingCurve(0.90, 0.00, 0.10, 1.00, duration: 0.8)){
            logoOpacity = 0.0
        }
    }
    
    func slideUpPurpleBar(){
        let seconds = 0.25
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            withAnimation(.timingCurve(0.90, 0.00, 0.10, 1.00, duration: 0.8)){
                self.slideUpBar = true
            }
        }

    }
    func restartAnimation(){
        self.handleAnimations()
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
