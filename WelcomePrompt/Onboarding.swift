//
//  Onboarding.swift
//  WelcomePrompt
//
//  Created by Mohshin on 7/5/20.
//  Copyright © 2020 Mohshin. All rights reserved.
//

import UIKit

struct Onboarding: Hashable, Codable {
    let imageName: String
    let title: String
    let subtitle: String
    
    init(imageName: String, title: String, subtitle: String) {
        self.imageName = imageName
        self.title = title
        self.subtitle = subtitle
    }
}


// What's New in Numbers

let onboarding1: Onboarding = Onboarding(
    imageName: "square.and.pencil",
    title: "A New Way To Edit",
    subtitle: "Now supports Magic Keyboard, a mouse or a track pad for precision editing"
)

let onboarding2: Onboarding = Onboarding(
    imageName: "square.grid.4x3.fill",
    title: "Support For Larger Tables",
    subtitle: "Create and work with more rows and Ims columns than ever before."
)

let onboarding3: Onboarding = Onboarding(
    imageName: "ellipsis.circle.fill",
    title: "And Lots More!",
    subtitle: "Collaborate in shared iCloud Drive folders, set sheet backgrounds, add drop caps, additional keyboard shortcuts and more..."
)

let onboardingData = [onboarding1, onboarding2, onboarding3]
