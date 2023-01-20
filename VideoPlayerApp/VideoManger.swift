//
//  VideoManger.swift
//  VideoPlayerApp
//
//  Created by Francisco Lira on 1/19/23.
//

import Foundation

enum Query: String, CaseIterable {
    // The query will iterate and search for a specific case in the pexels API
    // String menas that each case can be tunred into a string
    case nature, animals, people, ocean, food
    
}

struct ResponseBody: Decodable{
    var page: Int
    var perPage : Int
    var totalResults: Int
    var url: String
    var videos: [Video]
}

struct Video: Identifiable, Decodable{
    var id: Int
    var image: String
    var duration: Int
    var user: User
    var videoFiles: [VideoFile]
    
    struct User: Identifiable, Decodable{
        var id: Int
        var name: String
        var url: String
    }
    
    struct VideoFile: Identifiable, Decodable{
        var id: Int
        var quality: String
        var fileType: String
        var link: String
    }
    
    
}
