//
//  FruitRowView.swift
//  Fruit
//
//  Created by ÖMER  on 20.12.2024.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    
    // MARK: - VIEW
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                   
                )
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 8){
                Text(fruit.title)
                    .font(.title2)
                    .bold()
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }//: HSTACK
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
}
