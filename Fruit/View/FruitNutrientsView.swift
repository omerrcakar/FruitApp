//
//  FruitNutrientsView.swift
//  Fruit
//
//  Created by ÖMER  on 21.12.2024.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // MARK: PROPERTIES

    var fruit : Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    
    // MARK: BODY
    var body: some View {
        GroupBox(label: Label("Nutritional values", systemImage: "leaf.circle")){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self){ item in
                    Divider().padding(.vertical, 2)
                    
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .bold()
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//: BOX
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
}
