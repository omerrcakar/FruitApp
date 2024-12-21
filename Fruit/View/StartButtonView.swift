//
//  StartButtonView.swift
//  Fruit
//
//  Created by ÖMER  on 19.12.2024.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    
    // MARK: - BODY
    var body: some View {
        
        Button{
            isOnboarding = false
        }label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }
        .tint(.white)
        
    }
}

#Preview {
    StartButtonView()
}
