//
//  SettingsRowView.swift
//  Fruit
//
//  Created by ÖMER  on 21.12.2024.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?
    
    
    
    var body: some View {
        
        VStack{
            Divider().padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundStyle(.secondary)
                Spacer()
                if let content {
                    Text(content)
                        .bold()
                }else if let linkLabel, let linkDestination {
                    Link(linkLabel, destination: URL(string: linkDestination)!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.pink)
                }else{
                    EmptyView()
                }
            }
        }
        
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "Ömer")
}
