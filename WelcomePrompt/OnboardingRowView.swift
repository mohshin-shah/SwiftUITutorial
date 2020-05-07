//
//  OnboardingRowView.swift
//  WelcomePrompt
//
//  Created by Mohshin on 7/5/20.
//  Copyright © 2020 Mohshin. All rights reserved.
//

import SwiftUI

struct OnboardingRowView: View {
    
    let onboarding: Onboarding
    var tintColor: Color = .blue
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: onboarding.imageName)
                .resizable()
                .frame(maxWidth: 60, maxHeight: 60)
                .foregroundColor(tintColor)
            VStack(alignment: .leading, spacing: 5) {
                Text(onboarding.title)
                    .font(.headline)
                Text(onboarding.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct OnboardingRowView_Previews: PreviewProvider {
    static var previews: some View {
          Group {
              OnboardingRowView(onboarding: onboarding1)
          }
      }
}
