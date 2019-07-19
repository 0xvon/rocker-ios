//
//  Artist.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/15.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation

struct Artist {
    let id: Int
    let name: String
    let member: [String]
    let homepage: URL
    let genre: Genre
    let concerts: [Concert]
    let news: [News]
}

enum Genre {
    case rock
    case pop
    case alternative
    case anime
    case westernMusic
    case japaneseMusic
    case coreanMusic
}
