//
//  ProfilePhotoSelectorView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI
import Firebase
import FirebaseStorage

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var isImageSelected = false
    @Binding var profileImage: Image?

    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow
                    .ignoresSafeArea()
                Circle()
                    .scale(2)
                    .foregroundColor(.white.opacity(0.5))
                Circle()
                    .scale(1.9)
                    .foregroundColor(.white)

                Text("Setup Account")
                    .font(.title)
                    .bold()
                    .offset(y: -175)

                Text("Add a profile photo")
                    .font(.title)
                    .bold()
                    .offset(y: -130)

                VStack {
                    Button {
                        showImagePicker.toggle()
                    } label: {
                        if let profileImage = profileImage {
                            profileImage
                                .resizable()
                                .scaledToFill()
                                .frame(width: 128, height: 128)
                                .scaledToFill()
                                .clipShape(Circle())

                        } else {
                            Image(systemName: "person.circle")
                                .resizable()
                                .frame(width: 128, height: 128)
                                .foregroundColor(.black)

                        }
                    }
                    .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                        ImagePicker(selectedImage: $selectedImage)
                    }
                    .shadow(color: .yellow.opacity(1), radius: 10, x: 0, y: 0)

                    if let selectedImage = selectedImage {
                        Button {
                            viewModel.uploadProfileImage(selectedImage)
                            isImageSelected = true
                        } label: {
                            Text("Continue")
                                .font(.headline)
                                .frame(width: 200, height: 50)
                                .background(Color.black.opacity(0.9))
                                .foregroundColor(.white)
                                .bold()
                                .cornerRadius(20)
                                .offset(y: 5)
                        }
                        .fullScreenCover(isPresented: $isImageSelected) {
                            ProfileView(profileImage: $profileImage)
                        }
                    } else {
                        Text("Select an image first")
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }

    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView(profileImage: .constant(nil))
            .environmentObject(AuthViewModel())
    }
}
/*
import SwiftUI
import Firebase

struct ProfileView: View {
    @Binding var profileImage: Image?
    @State private var isLaunchScreenPresented = false
    @ObservedObject var viewModel = AuthViewModel()

    var body: some View {
        VStack {
            if let currentUser = viewModel.currentUser {
                // Assuming profileImageUrl and lastName are properties of the User model
                AsyncImage(url: URL(string: currentUser.profileImageUrl)) { image in
                    VStack {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 128, height: 128)
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
                        Text(currentUser.username)
                            .font(.headline)
                            .padding(.top, 10)
                    }
                } placeholder: {
                    // Placeholder image or loading indicator
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 128, height: 128)
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
            } else {
                Text("Loading...")
                    .font(.title)
                    .bold()
                    .padding(.top, 10)
            }
        }
        .padding(20)
        .onAppear {
            viewModel.fetchUser()
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(profileImage: .constant(nil))
    }
}
*/
