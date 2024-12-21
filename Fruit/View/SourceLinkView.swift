//
//  SourceLinkView.swift
//  Fruit
//
//  Created by ÖMER  on 21.12.2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
       
        GroupBox(label: Label("Website", systemImage: "globe")){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Website", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
        .font(.footnote)
    }
}

#Preview {
    SourceLinkView()
}
