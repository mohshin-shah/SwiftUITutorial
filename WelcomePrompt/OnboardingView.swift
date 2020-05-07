 //
//  ContentView.swift
//  WelcomePrompt
//
//  Created by Mohshin on 7/5/20.
//  Copyright © 2020 Mohshin. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    var tintColor: Color = .blue
    var title: String = ""
    var onboardingItems: [Onboarding] = []
    var actionItem: (title: String, action: () -> Void) = ("", {})
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Spacer()
            OnboardingListView(
                title: title,
                onboardingItems: onboardingItems, tintColor: tintColor)
            
            OnboadingActionView(
                title: actionItem.title,
                action: actionItem.action,
                tintColor: tintColor
            )
            Spacer()
        }
        .padding(50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(
            title: "What's new in Numbers",
            onboardingItems: onboardingData,
            actionItem: (title: "Continue", {
                print("Button Clicked")
            })
        )
    }
}
