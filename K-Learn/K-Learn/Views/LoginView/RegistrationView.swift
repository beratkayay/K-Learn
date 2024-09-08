//
//  RegistrationView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseStorage
import FirebaseFirestore
import FirebaseFirestoreSwift

struct RegistrationView: View {

    @State private var showingLoginScreen = false
    @State private var name = ""
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var showLaunchScreen = false
    @State private var showAlert = false // Added state for showing alert
    @State private var alertMessage = "" // Added state for alert message
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var selectedProfileImage: Image?

    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            Circle()
                .scale(2)
                .foregroundColor(.white.opacity(0.5))
            Circle()
                .scale(1.9)
                .foregroundColor(.white)

            VStack {
                Text("Create Account")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)

                TextField("Name", text: $name)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)

                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)

                TextField("Username", text: $username)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)

                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: 350, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)

                Button {
                    print("Sign Up Button Pressed")

                    // Check if all fields are filled
                    if name.isEmpty || email.isEmpty || username.isEmpty || password.isEmpty {
                        // Show an alert if any field is empty
                        showAlert = true
                        alertMessage = "Please fill in all fields"
                        return
                    }

                    if password.count < 6 {
                        showAlert = true
                        alertMessage = "Password must be at least 6 characters long"
                        return
                    }

                    viewModel.register(withName: name, email: email, username: username, password: password)
                    showLaunchScreen.toggle()
                } label: {
                    Text("Sign Up")
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.black.opacity(0.9))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .bold()
                }
                .shadow(color: .blue.opacity(0.7), radius: 10, x: 0, y: 0)

                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    HStack {
                        Text("Already have an account?")
                            .foregroundColor(.black)
                            .bold()

                        Text("Sign In")
                            .bold()
                    }
                }.padding()
            }
        }
        .fullScreenCover(isPresented: $showLaunchScreen) {
            ProfilePhotoSelectorView(profileImage: $selectedProfileImage)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Incomplete Information"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
            .environmentObject(AuthViewModel())
    }
}
