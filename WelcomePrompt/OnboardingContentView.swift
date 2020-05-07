//
//  OnboardingContentView.swift
//  WelcomePrompt
//
//  Created by Mohshin on 7/5/20.
//  Copyright © 2020 Mohshin. All rights reserved.
//

import SwiftUI

struct OnboardingListView: View {
    var body: some View {
        Text("What's new in Numbers")
            .font(.title)
        List {
            OnboardingRowView(onboarding: onboarding1)
        }
        OnboadingActionView()
    }
}

struct OnboardingContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingListView()
    }
}
