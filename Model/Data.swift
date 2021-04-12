//
//  Data.swift
//  SnipSwiftUI
//
//  Created by Aida Diallo on 4/10/21.
//

import UIKit

struct Data: Codable{
    var requestHash: String?
    var requestCached: Bool?
    var requestCacheExpiry: Int?
    var results: [Anime]?
    var lastPage: Int?
  

}
struct Anime: Codable{
    
    var url: String?
    var id: Int?
    var image_url: String?
    var title: String?
    var airing: Bool?
    var synopsis: String?
    var type: String?
    var episodes: Int?
    var score: Double?
    var start_date: String?
    var end_date: String?
    var members: Int?
    var rated: String?
}
