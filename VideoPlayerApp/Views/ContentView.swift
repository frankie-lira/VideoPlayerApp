//
//  ContentView.swift
//  VideoPlayerApp
//
//  Created by Francisco Lira on 1/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                ForEach(Query.allCases, id: \.self){
                    searchQuery in
               QueryTag(query: searchQuery, isSelected: false)
                }
            }
            ScrollView{
                VideoCard(video: videoPreview)
            }
            .frame(maxWidth: .infinity)
        }
        .background(Color("AccentColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
