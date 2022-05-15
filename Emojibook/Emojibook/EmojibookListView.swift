//
//  EmojibookListView.swift
//  Emojibook
//
//  Created by Dalton Lima on 5/15/22.
//

import SwiftUI

struct EmojibookListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10, content: { i in
                    Text("\(i): 🦄")
                        .font(.largeTitle)
                        .padding([.top, .bottom])
                })
            }
            .foregroundColor(.black)
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Emojibook")
        }
    }
}

struct EmojibookListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojibookListView()
    }
}
