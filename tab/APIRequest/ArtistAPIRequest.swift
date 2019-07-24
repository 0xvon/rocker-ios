//
//  ArtistAPIRequest.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/22.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestore

class ArtistAPIRequest {
    
    let database = Firestore.firestore()
    var ref: DocumentReference? = nil
    
    func getArtists() {
        
    }
    
    func getArtistInfo(artist: Artist) {
        
    }
    
    func like(artist: Artist) {
        
    }
    
    func cancelLike(artist: Artist) {
        
    }
    
    func shareArtist(artist: Artist) {
        
    }
}
