//
//  OnboardingContentView.swift
//  WelcomePrompt
//
//  Created by Mohshin on 7/5/20.
//  Copyright © 2020 Mohshin. All rights reserved.
//

import SwiftUI

struct OnboardingListView: View {
    let title: String
    let onboardingItems: [Onboarding]
    var tintColor: Color = .blue
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            Text(title)
                .font(.title)
            ForEach(onboardingItems, id: \.self) { onboarding in
                OnboardingRowView(onboarding: onboarding, tintColor: self.tintColor)
            }
        }
    }

}

struct OnboardingContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingListView(title: "Welcome", onboardingItems: [onboarding1])
    }
}
