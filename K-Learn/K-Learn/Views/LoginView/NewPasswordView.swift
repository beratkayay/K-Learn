//
//  NewPasswordView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI
import FirebaseAuth

struct NewPasswordView: View {
    @State private var email = ""
    @State private var wrongEmail = 0
    @State private var showAlert = false
    @State private var alertMessage = ""
    @Environment(\.presentationMode) var presentationMode
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
                VStack{
                    HStack {
                        Text("Forget your password?")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .padding()
                        Spacer()
                    }
                        
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
                    
                    HStack {
                       
                        Button {
                            resetPassword()
                        } label: {
                            Text("Send Email")
                                .padding()
                                .frame(width: 350, height: 50)
                                .background(Color.black.opacity(0.9))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .bold()
                                .shadow(color: .blue.opacity(0.5), radius: 10, x: 0, y: 0)
                        }
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                    }
                    }
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack {
                            Text("Already received an email?")
                                .foregroundColor(.black)
                                .bold()

                            Text("Sign In")
                                .bold()
                        }
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
    
    private func resetPassword() {
        guard !email.isEmpty else {
            wrongEmail = 1
            return
        }

        Auth.auth().sendPasswordReset(withEmail: email) { error in
            if let error = error {
                alertMessage = "Error: \(error.localizedDescription)"
                showAlert = true
            } else {
                alertMessage = "Password reset email sent. Please check your email."
                showAlert = true
            }
        }
    }
}

struct NewPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        NewPasswordView()
    }
}
