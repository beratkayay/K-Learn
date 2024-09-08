//
//  AuthViewModel.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore
import UIKit
import CoreData

class AuthViewModel: ObservableObject {
    @Published var isUserAuthenticated: Bool = false
    @Published var currentUser: User?
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthenticateUser = false
    @Published var userProfileImageURL: String?
    @Published var allUsers: [User] = [] // sonradan eklenen
    @Published var streakCount: Int = 0 
    private var tempUserSession: FirebaseAuth.User?
    private let service = UserService()
    
    

    init() {
        self.userSession = Auth.auth().currentUser
            self.fetchUser()
            self.fetchAllUsers() // sonradan
            self.fetchStreakCount()
            self.handleDailyLogin() // Kullanıcının her girişinde günlük giriş kontrolü yap
    }
    
    func fetchAllUsers() {
        Firestore.firestore().collection("users").getDocuments { snapshot, error in
            guard let documents = snapshot?.documents else {
                print("Error fetching users: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            let users = documents.compactMap { document -> User? in
                let data = document.data()
                let uid = document.documentID
                let email = data["email"] as? String ?? ""
                let username = data["username"] as? String ?? ""
                let name = data["name"] as? String ?? ""
                let profileImageUrl = data["profileImageUrl"] as? String ?? ""
                let level = data["level"] as? Int
                
                return User(id: uid, username: username, name: name, profileImageUrl: profileImageUrl, email: email, level: level )
            }

            
            self.allUsers = users
        }
    }
               
    func login(withEmail email: String, password: String) {
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign in with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            print("DEBUG: Did log user in")
        }
    }
    func register(withName name: String, email: String, username: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result , error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.tempUserSession = user
            
            
            let data = ["email": email, "username": username.lowercased(), "name": name, "uid": user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthenticateUser = true
                }
        }
        
        
        
    }
    
    func updateUserLevel(level: Int) {
        guard let uid = Auth.auth().currentUser?.uid else { return }

        let userRef = Firestore.firestore().collection("users").document(uid)

        userRef.getDocument { document, error in
            if let error = error {
                print("Error fetching user document: \(error.localizedDescription)")
                return
            }

            guard let document = document, document.exists else {
                print("User document not found.")
                return
            }

            let currentLevel = document.data()?["level"] as? Int ?? 0

            if level > currentLevel {
                userRef.updateData(["level": level]) { error in
                    if let error = error {
                        print("Error updating user level: \(error.localizedDescription)")
                    } else {
                        print("User level updated successfully.")
                    }
                }
            }
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            isUserAuthenticated = false
        } catch {
            print("Error signing out: \(error.localizedDescription)")
        }
    }
    
    func uploadProfileImage(_ image: UIImage) {
        guard let uid = tempUserSession?.uid else {
            print("DEBUG: User session is nil. Cannot upload profile image.")
            return
        }
        
        ImageUploader.uploadImage(image: image) { profileImageUrl in
            guard !profileImageUrl.isEmpty else {
                print("DEBUG: Empty profile image URL received after upload.")
                return
            }
            
            Firestore.firestore().collection("users")
                .document(uid)
                .updateData(["profileImageUrl": profileImageUrl]) { error in
                    if let error = error {
                        print("DEBUG: Failed to update profile image URL in Firestore with error: \(error.localizedDescription)")
                    } else {
                        print("DEBUG: Profile image URL updated successfully.")
                        self.userSession = self.tempUserSession
                    }
                }
        }
    }
    
    func filteredUsers(searchText: String) -> [User] {
        if searchText.isEmpty {
            return allUsers
        } else {
            return allUsers.filter { $0.username.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    func fetchUser() {
        guard let uid = self.userSession?.uid else { return }
        service.fetchUser(withUid: uid) { user in
            self.currentUser = user
            self.userProfileImageURL = user.profileImageUrl
        }
    }
    
 
    func fetchStreakCount() {
            guard let uid = self.userSession?.uid else { return }
            let userRef = Firestore.firestore().collection("users").document(uid)

            userRef.getDocument { document, error in
                if let error = error {
                    print("Error fetching user document: \(error.localizedDescription)")
                    return
                }

                guard let document = document, document.exists else {
                    print("User document not found.")
                    return
                }

                let streakCount = document.data()?["streakCount"] as? Int ?? 0
                self.streakCount = streakCount
            }
        }

    // Kullanıcı giriş yaptığında günlük giriş kontrolü ve streak sayısının güncellenmesi
    func handleDailyLogin() {
        guard let uid = self.userSession?.uid else { return }
        // Kullanıcı oturumu mevcut değilse fonksiyondan çıkılır
        let userRef = Firestore.firestore().collection("users").document(uid)
        // Firestore'daki kullanıcı belgesine referans oluşturulur

        userRef.getDocument { document, error in
            // Kullanıcı belgesi Firestore'dan çekilir
            if let error = error {
                // Hata varsa konsola yazdırılır ve fonksiyondan çıkılır
                print("Error fetching user document: \(error.localizedDescription)")
                return
            }

            guard let document = document, document.exists else {
                // Belge bulunamazsa veya mevcut değilse hata mesajı yazdırılır ve fonksiyondan çıkılır
                print("User document not found.")
                return
            }

            let lastLoginDate = document.data()?["lastLoginDate"] as? Timestamp
            // Son giriş tarihi Firestore'dan alınıyor
            let today = Timestamp(date: Date())
            // Bugünün tarihi oluşturuluyor

            // Eğer son giriş tarihi yoksa veya son giriş tarihi bugün değilse streak sıfırlanıyor
            if lastLoginDate == nil || !Calendar.current.isDate(today.dateValue(), inSameDayAs: lastLoginDate!.dateValue()) {
                self.incrementStreakCount()
                // Günlük giriş yapılmışsa streak sayısını artır
            }

            // Günlük giriş sayısı Firestore'da güncelleniyor
            userRef.updateData(["lastLoginDate": today]) { error in
                if let error = error {
                    // Hata varsa konsola yazdırılır
                    print("Error updating last login date: \(error.localizedDescription)")
                }
            }
        }
    }

    // Streak sayısını artırma fonksiyonu
    func incrementStreakCount() {
        guard let uid = self.userSession?.uid else { return }
        // Kullanıcı oturumu mevcut değilse fonksiyondan çıkılır
        let userRef = Firestore.firestore().collection("users").document(uid)
        // Firestore'daki kullanıcı belgesine referans oluşturulur

        userRef.updateData(["streakCount": self.streakCount + 1]) { error in
            // Firestore'daki streak sayısı güncellenir
            if let error = error {
                // Hata varsa konsola yazdırılır
                print("Error incrementing streak count: \(error.localizedDescription)")
            } else {
                // Başarılı olursa konsola yazdırılır ve yerel streak sayısı artırılır
                print("Streak count incremented successfully.")
                self.streakCount += 1
            }
        }
    }

    // Streak sıfırlama fonksiyonu
    func resetStreakCount() {
        guard let uid = self.userSession?.uid else { return }
        // Kullanıcı oturumu mevcut değilse fonksiyondan çıkılır
        let userRef = Firestore.firestore().collection("users").document(uid)
        // Firestore'daki kullanıcı belgesine referans oluşturulur

        userRef.updateData(["streakCount": 0]) { error in
            // Firestore'daki streak sayısı sıfırlanır
            if let error = error {
                // Hata varsa konsola yazdırılır
                print("Error resetting streak count: \(error.localizedDescription)")
            } else {
                // Başarılı olursa konsola yazdırılır ve yerel streak sayısı sıfırlanır
                print("Streak count reset successfully.")
                self.streakCount = 0
            }
        }
    }


    func saveBio(_ bio: String) {
        guard let uid = self.userSession?.uid else {
            print("DEBUG: User session is nil. Cannot save bio.")
            return
        }
        
        Firestore.firestore().collection("users")
            .document(uid)
            .updateData(["bio": bio]) { error in
                if let error = error {
                    print("DEBUG: Failed to save bio in Firestore with error: \(error.localizedDescription)")
                } else {
                    print("DEBUG: Bio saved successfully.")
                    // Biyografi başarıyla kaydedildikten sonra currentUser'ı güncelle ve yayımcıyı güncelle
                    self.currentUser?.bio = bio
                    self.objectWillChange.send() // @Published yayımcısını güncelle
                }
            }
    }



}

