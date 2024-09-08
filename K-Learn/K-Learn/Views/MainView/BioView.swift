//
//  BioView.swift
//  K-Learn
//
//  Created by berat kaya on 21.04.2024.
//

import SwiftUI

struct BioView: View {
    @State private var bioText: String = ""
    @State private var outputText: String = ""
    @ObservedObject var authViewModel = AuthViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    init(authViewModel: AuthViewModel) {
         self.authViewModel = authViewModel
         _bioText = State(initialValue: authViewModel.currentUser?.bio ?? "")
     }
    
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
            TextField("Bio", text: $bioText)
                .padding()
                .background(Color.gray.opacity(0.5))
                .foregroundColor(.blue)
                .cornerRadius(50)
                .padding()
                .onChange(of: bioText) { newValue in
                    if newValue.count > 40 {
                        bioText = String(newValue.prefix(40))
                    }
                }

            HStack {
                Spacer()
                Button(action: {
                    // Butona tıklandığında, bioText'teki metni outputText'e kopyala
                    outputText = bioText
                    // Kullanıcının Firebase hesabına biyografiyi kaydet
                    authViewModel.saveBio(bioText)
                }) {
                    Text("save")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(50)
                }
            }
            .padding(.trailing)
            Spacer()
        }.navigationBarBackButtonHidden(true)
        .padding()
    }
}

struct BioView_Previews: PreviewProvider {
    static var previews: some View {
        let authViewModel = AuthViewModel()
        return BioView(authViewModel: authViewModel)
    }
}
