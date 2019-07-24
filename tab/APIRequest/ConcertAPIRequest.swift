//
//  ConcertAPIRequest.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/22.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestore

class ConcertAPIRequest {
    
    let database = Firestore.firestore()
    var ref: DocumentReference? = nil
    
    func getConcerts(artist: Artist) {
        
    }
    
    func getConcertInfo(concert: Concert) {
        
    }
    
    func shareConcert(concert: Concert) {
        
    }
}
