//
//  User.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import FirebaseFirestoreSwift
import FirebaseFirestore

struct User: Identifiable, Decodable {
    
    @DocumentID var id: String?
    let username: String
    let name: String
    let profileImageUrl: String
    let email: String
    var level: Int?
    var bio: String?
}

