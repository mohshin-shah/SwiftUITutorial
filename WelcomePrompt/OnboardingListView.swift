//
//  OnboardingContentView.swift
//  WelcomePrompt
//
//  Created by Mohshin on 7/5/20.
//  Copyright © 2020 Mohshin. All rights reserved.
//

import SwiftUI

struct OnboardingListView: View {
    let onboardingItems: [Onboarding]
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            ForEach(onboardingItems, id: \.self) { onboarding in
                OnboardingRowView(onboarding: onboarding)
            }
        }.padding()
    }
}

struct OnboardingContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingListView(onboardingItems: [onboarding1])
    }
}
