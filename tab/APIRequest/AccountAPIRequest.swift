//
//  AccountAPIRequest.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/24.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestore

class AccountAPIRequest {
    
    let database = Firestore.firestore()
    var ref: DocumentReference? = nil
    
    func updateDisplayName(displayName: String) {
        
    }
    
    func updateUsername(username: String) {
        
    }
    
    func updateAvatar(avatar: URL?) {
        
    }
    
    func updateBiography(biography: String) {
        
    }
    
    func updateNotificationSetting(isNotification: Bool) {
        
    }
}
