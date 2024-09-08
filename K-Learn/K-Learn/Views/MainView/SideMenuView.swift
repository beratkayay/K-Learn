//
//  SideMenuView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI
import Firebase
struct SideMenuView: View {
    @ObservedObject var authViewModel: AuthViewModel
    @EnvironmentObject var streakCount: StreakCount
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
                        
                        VStack {
                            NavigationLink(destination: BioView(authViewModel: authViewModel)) {
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                
                                Text("Add Bio")
                                    .foregroundColor(.blue)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                        }.padding(.trailing, 15)
                        
                        
                        
                        
                        
                    }
                    .padding(.leading, 15)
                    // Diğer side menu içeriği...

                    // Profil fotoğrafı
                    if let currentUser = authViewModel.currentUser {
                        // authViewModel'deki currentUser mevcutsa
                        AsyncImage(url: URL(string: currentUser.profileImageUrl)) { image in
                            // currentUser'ın profil resmini URL'den yüklemek için AsyncImage
                            
                            VStack {
                               
                                HStack {
                                    
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                        .shadow(radius: 5)
                                        .padding(.leading, 2)
                                    // Profil fotoğrafı yeniden boyutlandırılır, bir daire içine alınır, beyaz çerçeve eklenir ve gölge uygulanır, sola dolgu eklenir

                                        
                                       
                                        HStack {
                                            VStack(alignment: .leading, spacing: 0) {
                                                
                                                HStack {
                                                    Text("\(currentUser.username)")
                                                        .foregroundColor(.primary)
                                                        .font(.title2)
                                                        .fontWeight(.semibold)
                                                        .padding(.top, 15)
                                                    Spacer()
                                                    
                                                    
                                                }
                                                .padding(.leading, 5)
                                                
                                               
                                                HStack {
                                                    if let userLevel = authViewModel.filteredUsers(searchText: "").first(where: { $0.id == currentUser.id })?.level {
                                                        if userLevel >= 8{
                                                            
                                                            Text("Gold League") // Emerald League'i göster
                                                                    .fontWeight(.semibold)
                                                                    .foregroundColor(.gold)
                                                        }
                                                        
                                                        else if userLevel >= 7 && (userLevel <= 8) {
                                                            
                                                            Text("Silver League") // Show gold league
                                                                .fontWeight(.semibold)
                                                                .foregroundColor(.silver)
                                                            
                                                        }
                                                        
                                                        else if userLevel >= 3 && (userLevel <= 6) {
                                                            
                                                            Text("Bronze League") // Show gold league
                                                                .fontWeight(.semibold)
                                                                .foregroundColor(.bronze)
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
                                                    Spacer()
                                                }
                                                .padding(.leading, 5)
                                            }
                                            HStack {
                                                // Streak bilgisini burada göster
                                         
                                                Text("\(authViewModel.streakCount) 🔥")
                                                    .font(.title2)
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(.primary)
                                                    .offset(y: 10)
                                            }
                                        }

                                        
                                      Spacer()

                                    }
                                    
                                    
                                    HStack {
                                       /*
                                            VStack{

                                                HStack{
                                                    ZStack {
                                                        
                                                        RoundedRectangle(cornerRadius: 50)
                                                            .frame(width: 160, height: 40)
                                                            .foregroundColor(.primary.opacity(0.1))
                                                        HStack{
                                                            NavigationLink(destination: SettingsView()) {
                                                                Image(systemName: "gear")
                                                                    .resizable()
                                                                    .frame(width: 30, height: 30)
                                                                    .foregroundColor(.blue)
                                                                Text("Settings")
                                                                    .font(.title3)
                                                                    .fontWeight(.semibold)
                                                                    .foregroundColor(.primary)
                                                                
                                                            }.padding(.leading, -20)
                                                        }
                                                        
                                                    }.padding(.leading, 2)
                                                    Spacer()
                                                }
                                                
                                                
                                                HStack {
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 50)
                                                            .frame(width: 160, height: 40)
                                                            .foregroundColor(.primary.opacity(0.1))
                                                        HStack {
                                                            Text("🔥")
                                                                .font(.system(size: 30))
                                                            .foregroundColor(.white)
                                                            .font(.title3)
                                                        .fontWeight(.semibold)
                                                            Text("\(streakCount.fireCount) Streak")
                                                                .font(.title3)
                                                                .fontWeight(.semibold)
                                                                .foregroundColor(.primary)
                                                            
                                                        }.padding(.leading, -20)
                                                    }.padding(.leading, 2)
                                                    Spacer()
                                                }
                                                
                                                
                                                HStack {
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 50)
                                                            .frame(width: 160, height: 40)
                                                            .foregroundColor(.primary.opacity(0.1))
                                                        HStack{
                                                            NavigationLink(destination: TimerView()) {
                                                                Image(systemName: "clock")
                                                                    .resizable()
                                                                    .frame(width: 28, height: 28)
                                                                    .foregroundColor(.blue)
                                                                Text("Daily Goal")
                                                                    .font(.title3)
                                                                    .fontWeight(.semibold)
                                                                    .foregroundColor(.primary)
                                                                
                                                            }.padding(.leading, -10)
                                                            
                                                        }
                                                    }.padding(.leading, 2)
                                                    Spacer()
                                                }.padding(.top, -5)
                                                
                                                HStack {
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 50)
                                                            .frame(width: 160, height: 40)
                                                            .foregroundColor(.primary.opacity(0.1))
                                                        HStack{
                                                            NavigationLink(destination: UserListView()) {
                                                                Image(systemName: "person.circle")
                                                                    .resizable()
                                                                    .frame(width: 30, height: 30)
                                                                    .foregroundColor(.blue)
                                                                Text("Explore")
                                                                    .font(.title3)
                                                                    .fontWeight(.semibold)
                                                                    .foregroundColor(.primary)
                                                                
                                                            }.padding(.leading, -27)
                                                        }
                                                    }.padding(.leading, 2)
                                                    Spacer()
                                                }
                                                
                                            }
                                        */
                                        
                                        Spacer()
                                    }
                                    HStack {
                                        if let bio = currentUser.bio { // Biyografiyi AuthViewModel'den al ve göster
                                            Text(bio.lowercased())
                                                .foregroundColor(.primary)
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                        }
                                        Spacer()
                                    }
                                    .padding(.leading)
                                    .background(
                                        RoundedRectangle(cornerRadius: 50)
                                            .foregroundColor(Color.gray.opacity(0.3))
                                            .frame(width: 370)
                                    )

                                    
                                    Spacer()
                                    
                                }
                               
                            
                        } placeholder: {
                            // Placeholder image veya loading indicator
                            
                            VStack {
                                HStack {
                                    Image(systemName: "person.circle.fill")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .foregroundColor(.gray)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                        .shadow(radius: 5)
                                    .padding(.leading, 2)
                                    Spacer()
                                }
                                Spacer()
                            }
                        }
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(authViewModel: AuthViewModel())
            .environmentObject(AuthViewModel())  // Gerekli çevresel nesne eklemesi
            .environmentObject(StreakCount())
    }
}
