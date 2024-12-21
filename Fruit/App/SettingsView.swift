//
//  SettingsView.swift
//  Fruit
//
//  Created by ÖMER  on 21.12.2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: PROPERTIES
    
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: SECTION 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruit App", labelImage: "info.circle")
                            
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are source of many essential nutrients, including potassium, dietary fiber, vitamins and much more. ")
                                .font(.footnote)
                        }
                        
                    }
                    
                    // MARK: SECTION 2
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the applicatin by toggle the switch in this box.That way it starts the onboarding process and you will see the welcome screen again. ")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .bold()
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .bold()
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    
                    // MARK: SECTION 3
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        SettingsRowView(name: "Developer", content: "Ömer ÇAKAR")
                        SettingsRowView(name: "Compatibility", content: "IOS IpadOS")
                        SettingsRowView(name: "Github", linkLabel: "omerrcakar", linkDestination: "https://github.com/omerrcakar")
                        SettingsRowView(name: "Version", content: "1.0")
                        
                        
                        
                    }
                    
                    
                }//: VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing){
                        Button{
                            dismiss()
                        }label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding()
            }//: SCROLL
        }
        
        
    }
}

#Preview {
    NavigationStack {
        SettingsView()
    }
}
