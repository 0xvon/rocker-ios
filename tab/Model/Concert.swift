//
//  Concert.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/19.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation

struct Concert {
    let id: Int
    let name: String
    let category: concertType
    let place: String
    let date: Date
    let startTime: TimeZone
    let endTime: TimeZone
    let avatar: String
    let artist: Artist
    
}

enum concertType {
    case tour
    case live
    case fanClubLive
    case event
    case festival
}
