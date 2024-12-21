//
//  FruitApp.swift
//  Fruit
//
//  Created by ÖMER  on 18.12.2024.
//

import SwiftUI

@main
struct FruitApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
            
        }
    }
    
}
