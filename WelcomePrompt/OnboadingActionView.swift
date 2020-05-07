//
//  OnboadingActionView.swift
//  WelcomePrompt
//
//  Created by Mohshin on 7/5/20.
//  Copyright © 2020 Mohshin. All rights reserved.
//

import SwiftUI

struct OnboadingActionView: View {
    let title: String
    var action: () -> Void = {}
    var tintColor: Color = .blue
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding(EdgeInsets.init(top: 10, leading: 50, bottom: 10, trailing: 50))
            .background(tintColor)
            .foregroundColor(.white)
                .font(.system(size: 18, weight: .semibold))
            .fixedSize()
            .cornerRadius(10)
        }
    }
}

struct OnboadingActionView_Previews: PreviewProvider {
    static var previews: some View {
        OnboadingActionView(title: "Continue")
    }
}
