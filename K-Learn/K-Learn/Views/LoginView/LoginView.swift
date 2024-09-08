//
//  LoginView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var wrongEmail = 0
    @State private var wrongPassword = 0
    @State private var showLaunchScreen = false
    @State private var showAlert = false
    @State private var alertMessage = ""

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

                VStack {
                    Text("Log In")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.black)
                        .offset(x: -125)

                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongEmail))
                        .onChange(of: email) { newEmail in
                            // Convert the entered email to lowercase
                            email = newEmail.lowercased()
                        }


                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))

                    HStack {
                        Spacer()
                        NavigationLink(destination: NewPasswordView()) {
                            Text("Forgot password?")
                                .foregroundColor(Color(.black))
                                .offset(x: -22)
                                .font(.subheadline)
                        }
                    }

                    Button {
                        authenticateUser(withEmail: email, password: password) { success in
                            if success {
                                // Authentication successful, set the flag to show the launch screen
                                showLaunchScreen = true
                            } else {
                                // Authentication failed, set up an alert
                                showAlert = true
                                alertMessage = "Authentication failed. Please check your credentials and try again."
                                // Optionally, you can reset the email and password fields here if needed
                            }
                        }
                    } label: {
                        Text("Sign In")
                            .padding()
                            .frame(width: 350, height: 50)
                            .background(Color.black.opacity(0.9))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .bold()
                            .shadow(color: .blue.opacity(0.7), radius: 10, x: 0, y: 0)
                    }

                    NavigationLink(destination: RegistrationView().navigationBarBackButtonHidden(true)) {
                        HStack {
                            Text("Don't have an account?")
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)

                            Text("Sign Up")
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.systemBlue))
                        }
                    }
                }
            }
            .fullScreenCover(isPresented: $showLaunchScreen) {
                // Replace 'LaunchScreenView()' with the actual launch screen view
                LaunchScreen()
            }
            .navigationBarHidden(true)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Authentication Failed"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }.navigationBarBackButtonHidden()
        .onAppear {
            // Check if a user is already authenticated, if yes, go to the launch screen
            if Auth.auth().currentUser != nil {
                showLaunchScreen = true
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension LoginView {
    func authenticateUser(withEmail email: String, password: String, completion: @escaping (Bool) -> Void) {
        let auth = Auth.auth()

        auth.signIn(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                completion(false)
            } else {
                if let _ = auth.currentUser {
                    completion(true)
                } else {
                    completion(false)
                }
            }
        }
    }
}
