//
//  FruitDetailView.swift
//  Fruit
//
//  Created by ÖMER  on 21.12.2024.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                // HEADER
                
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading,spacing: 20) {
                    // TITLE
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(fruit.gradientColors[1])
                        
                    // HEADLINE
                    
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    // NUTRIENTS
                    
                    FruitNutrientsView(fruit: fruit)
                    
                    // SUBHEADLINE
                    Text("Learn more about \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundStyle(fruit.gradientColors[1])
                    
                    // DESCRIPTION
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                    
                    
                    // LINK
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                    
                    
                }//: VSTACK
                .padding(.horizontal, 20)
                .frame(maxWidth: 640,alignment: .center)
            }//: VSTACK
            .navigationTitle(fruit.title)
            .navigationBarTitleDisplayMode(.inline)
        }//: SCROLL
        .ignoresSafeArea(edges: .top)
        
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
