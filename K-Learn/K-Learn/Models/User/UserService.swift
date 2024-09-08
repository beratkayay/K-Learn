//
//  UserService.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift
import FirebaseFirestore

struct UserService {
    
    func fetchUser(withUid uid: String, completion: @escaping(User) -> Void) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let snapshot = snapshot else { return }
        
                guard let user = try? snapshot.data(as: User.self) else { return }
                
         completion(user)
            }
    }
}

