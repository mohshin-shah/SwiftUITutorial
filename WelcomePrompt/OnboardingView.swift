 //
//  ContentView.swift
//  WelcomePrompt
//
//  Created by Mohshin on 7/5/20.
//  Copyright © 2020 Mohshin. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    
    var title: String = ""
    var onboardingItems: [Onboarding] = []
    var actionItem: (title: String, action: () -> Void) = ("", {})
    
    var body: some View {
        VStack() {
            Spacer(minLength: 50)
            Text(title)
                .font(.title)
            OnboardingListView(onboardingItems: onboardingItems)
            Spacer()
            OnboadingActionView(title: actionItem.title, action: actionItem.action)
            Spacer(minLength: 50)
        }
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
