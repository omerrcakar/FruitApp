//
//  OnboardingView.swift
//  Fruit
//
//  Created by ÖMER  on 19.12.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach (fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
                
            }
            
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
