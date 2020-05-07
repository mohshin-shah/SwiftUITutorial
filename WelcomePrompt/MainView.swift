//
//  MainView.swift
//  WelcomePrompt
//
//  Created by Mohshin on 7/5/20.
//  Copyright © 2020 Mohshin. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State var showingDetail = false

    var body: some View {
            Button(action: {
                self.showingDetail.toggle()
            }) {
                Text("Show")
            }.sheet(isPresented: $showingDetail) {
                OnboardingView(
                    tintColor: Color(UIColor.systemBlue),
                        title: "Welcome to \n App Store Connect",
                        onboardingItems: onboardingData,
                        actionItem: (
                            title: "Sign In",
                            {
                                self.showingDetail.toggle()
                        })
                )
            }
    }
}

fileprivate extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

fileprivate extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
