//
//  ContentView.swift
//  Fruit
//
//  Created by ÖMER  on 18.12.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State var isSettingsView: Bool = false
    
    
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                            
                    }
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Fruits")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button{
                        isSettingsView = true
                    }label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .sheet(isPresented: $isSettingsView){
                SettingsView()
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.medium, .large])
                
            }
            
            
        }//: NAVSTACK
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
