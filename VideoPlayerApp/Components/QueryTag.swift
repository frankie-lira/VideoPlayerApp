//
//  QueryTag.swift
//  VideoPlayerApp
//
//  Created by Francisco Lira on 1/19/23.
//

import SwiftUI

struct QueryTag: View {
    var query: Query // This makes for it to not pass a string inseatd it will pass any of the following: nature, animals, people, ocean, food
    var isSelected: Bool
    
    var body: some View {
        Text(query.rawValue) //its rawvalue to get the exact
            .font(.caption)
            .bold()
            .foregroundColor(isSelected ? .black : .gray)
            .padding(10)
            .background(.thinMaterial)
            .cornerRadius(10)
    }
}

struct QueryTag_Previews: PreviewProvider {
    static var previews: some View {
        QueryTag(query: Query.food, isSelected: true)
    }
}
