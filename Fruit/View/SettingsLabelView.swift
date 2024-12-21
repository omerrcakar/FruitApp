//
//  SettingsLabelView.swift
//  Fruit
//
//  Created by ÖMER  on 21.12.2024.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased())
                .bold()
                
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fruit App", labelImage: "info.circle")
}
