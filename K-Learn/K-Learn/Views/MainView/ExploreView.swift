//
//  ExploreView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var authViewModel = AuthViewModel()
    @State private var searchText = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow
                    .ignoresSafeArea()
                
                Circle()
                    .scale(2.1)
                    .foregroundColor(colorScheme == .dark ? .black : Color.white.opacity(0.5))
                
                Circle()
                    .scale(2)
                    .foregroundColor(colorScheme == .dark ? .black : .white)
                
                VStack{
                    HStack {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "arrow.backward.circle")
                                .foregroundColor(.blue)
                                .font(.title)
                                .fontWeight(.semibold)
                                .padding()
                        }
                        Spacer()
                        
                    }
                    SearchBar(text: $searchText)
                    List {
                        // Kullanıcıların listelendiği liste
                        ForEach(authViewModel.filteredUsers(searchText: searchText)) { user in
                            // Filtrelenmiş kullanıcılar üzerinde döngü
                            NavigationLink(destination: UserDetailsView(user: user)) {
                                // Kullanıcı detaylarını göstermek için gezinme bağlantısı
                                UserRowView(user: user)
                                // Kullanıcı satırını görüntülemek için kullanıcı satır görünümü
                            }
                        }
                    }

                }
                .onAppear {
                    authViewModel.fetchAllUsers()
            }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            // Arama metni için metin girişi alanı
            TextField("Search...", text: $text)
                .padding(8)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .padding(.horizontal, 8)
        }
        .padding(.vertical, 8)
    }
}
struct UserRowView: View {
    var user: User
    @StateObject var authViewModel = AuthViewModel()

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: user.profileImageUrl)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 3)
            } placeholder: {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.gray)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 3)
            }

            VStack(alignment: .leading) {
                Text(user.username)
                    .font(.headline)
                if let userLevel = authViewModel.filteredUsers(searchText: "").first(where: { $0.id == user.id })?.level {
                    
                    if userLevel >= 8{
                        
                        Text("Gold League") // Emerald League'i göster
                                .fontWeight(.semibold)
                                .foregroundColor(.gold) // Emerald rengini kullan
                          
                    }
                    
                    else if userLevel >= 7 && (userLevel <= 8) {
                        
                        Text("Gold League") // Show gold league
                            .fontWeight(.semibold)
                            .foregroundColor(.gold) // Gold color
                       
                        
                    }
                    
                    else if userLevel >= 3 && (userLevel <= 6) {
                        
                        Text("Silver League") // Show gold league
                            .fontWeight(.semibold)
                            .foregroundColor(.silver)
                       
                    }
                    
                    else {
                        Text("Bronze League") // Show gold league
                            .fontWeight(.semibold)
                            .foregroundColor(.bronze)
                        
                    }
                    
                } else {
                    
                    
                    Text("Bronze League") // Show gold league
                        .fontWeight(.semibold)
                        .foregroundColor(.bronze)
                }

            }
        }
    }
}

extension Color {
    static let silver = Color(red: 192/255, green: 192/255, blue: 192/255)
    static let bronze = Color(red: 205/255, green: 127/255, blue: 50/255)
    static let gold = Color(red: 255/255, green: 215/255, blue: 0/255) 
    static let emerald = Color(red: 0/255, green: 204/255, blue: 102/255)
    static let diamond = Color(red: 0/255, green: 183/255, blue: 235/255)
    static let sapphire = Color(red: 15/255, green: 82/255, blue: 186/255)
    static let ruby = Color(red: 204/255, green: 0/255, blue: 0/255)
    static let pearl = Color(red: 234/255, green: 224/255, blue: 200/255)
    static let amethyst = Color(red: 153/255, green: 102/255, blue: 204/255)
    static let darkGreen = Color(red: 29/255, green: 185/255, blue: 84/255)

}

struct UserDetailsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject var authViewModel = AuthViewModel()
    var user: User
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "arrow.backward.circle")
                        .foregroundColor(.blue)
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                }
                Spacer()
            }
            Spacer()
            VStack {
                Spacer()
                HStack {
                    AsyncImage(url: URL(string: user.profileImageUrl)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .shadow(radius: 3)
                    } placeholder: {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.gray)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .shadow(radius: 3)
                    }
                }
                VStack(alignment: .leading) {
                    Text(user.username)
                        .font(.headline)
                }
                Spacer()
                if let userLevel = authViewModel.filteredUsers(searchText: "").first(where: { $0.id == user.id })?.level {
                    
                    if userLevel >= 8{
                        
                        Text("Saphire League") // Emerald League'i göster
                                .fontWeight(.semibold)
                                .foregroundColor(.sapphire) // Emerald rengini kullan
                           
                    } 
                    
                    else if userLevel >= 7 && (userLevel <= 8) {
                        
                        Text("Gold League") // Show gold league
                            .fontWeight(.semibold)
                            .foregroundColor(.gold) // Gold color
                      
                        
                    } 
                    
                    else if userLevel >= 3 && (userLevel <= 6) {
                        
                        Text("Silver League") // Show gold league
                            .fontWeight(.semibold)
                            .foregroundColor(.silver)
                      
                    } 
                    
                    else {
                        Text("Bronze League") // Show gold league
                            .fontWeight(.semibold)
                            .foregroundColor(.bronze)
                       
                    }
                    
                } else {
                    
                    
                    Text("Level: 0")
                        .fontWeight(.semibold)
                        .foregroundColor(.green)
                }
            }
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
