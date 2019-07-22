//
//  TweetAPIRequest.swift
//  tab
//
//  Created by Masato TSUTSUMI on 2019/07/22.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestore

class TweetAPIRequest {
    
    let database = Firestore.firestore()
    var ref: DocumentReference? = nil
    
    func tweet(text: String, image: URL?, createdAt: Date, userId: Int) {
        
        ref = database.collection("tweets").addDocument(data: [
            "text": text,
            "createdAt": createdAt,
            "user": userId
        ]) {
            err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(self.ref!.documentID)")
            }
        }
    }
    
    func getTimeline() {
        
        self.database.collection("users").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
    }
    
}
