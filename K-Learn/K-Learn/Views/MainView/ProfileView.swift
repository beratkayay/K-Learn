//
//  ProfileView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI
import Firebase

struct ProfileView: View {
    @Binding var profileImage: Image?
    @State private var isLaunchScreenPresented = false
    @ObservedObject var viewModel = AuthViewModel()
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack {
                
                
                Color.yellow
                    .ignoresSafeArea()
                
                Circle()
                    .scale(2)
                    .foregroundColor(colorScheme == .dark ? .black : Color.white.opacity(0.5))
                
                Circle()
                    .scale(1.9)
                    .foregroundColor(colorScheme == .dark ? .black : .white)
                
                VStack {
                    
                    
                    if let currentUser = viewModel.currentUser {
                        // Assuming profileImageUrl and lastName are properties of the User model
                        AsyncImage(url: URL(string: currentUser.profileImageUrl)) { image in
                            VStack {
                                
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 120, height: 120)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                    .shadow(radius: 10)
                                    .onTapGesture {
                                        isLaunchScreenPresented.toggle()
                                    }
                                    .fullScreenCover(isPresented: $isLaunchScreenPresented) {
                                        LaunchScreen()
                                    }
                                
                                // Display the user's last name
                                Text("@\(currentUser.username)")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                
                            }
                        } placeholder: {
                            // Placeholder image or loading indicator
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.gray)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                .shadow(radius: 10)
                                .onTapGesture {
                                    isLaunchScreenPresented.toggle()
                                }
                                .fullScreenCover(isPresented: $isLaunchScreenPresented) {
                                    LaunchScreen()
                                }
                            
                            // Display a placeholder for the last name (customize as needed)
                            Text("username")
                                .font(.headline)
                                .padding(.top, 10)
                        }
                    }
                    
                    else {
                        Text("Loading...")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    
                }
                
                .padding(20)
                .onAppear {
                    viewModel.fetchUser()
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(profileImage: .constant(nil))
    }
}



/*
import SwiftUI
import Firebase

struct ProfileView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var profileImage: Image?

    var body: some View {
        NavigationView {
            ZStack {
                // ... (existing code)

                ZStack {
                    VStack {
                        HStack {
                            if let profileImage = profileImage {
                                profileImage
                                    .resizable()
                                    .frame(width: 120, height: 120)
                                    .clipShape(Circle())
                                    .padding(.leading)
                            } else {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.black)
                                    .padding(.leading)
                            }
                            Spacer()
                        }
                        Spacer()
                    }
                }
            }
        }
        .onChange(of: profileImage) { newImage in
            // This block will be executed when profileImage is updated
            // Ensure the view is refreshed when profileImage changes
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        let profileImage = Image(systemName: "person.circle")
        return ProfileView(profileImage: .constant(profileImage))
    }
}
*/
