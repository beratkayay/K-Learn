//
//  SettingsView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI
import FirebaseAuth

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isSignedOut = false
    

    var body: some View {
        NavigationView{
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
                    Spacer()
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
                        
                        Text("Settings")
                            .font(.largeTitle)
                            .padding()
                            .padding(.trailing, 60)
                        Spacer()
                    }
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 400, height: 1)
                        .foregroundColor(.gray.opacity(0.5))
                    
                    Toggle("Dark Mode", isOn: $isDarkMode)
                        // Kullanıcıya karanlık modu açma/kapatma seçeneği sunan anahtarlama düğmesi
                        .padding()
                        .onChange(of: isDarkMode) { newValue in
                            // Anahtarlama değeri değiştiğinde çalışacak olan değişim dinleyicisi
                            if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                                // Uygulamanın bağlı olduğu ilk pencere sahnesi alınır
                                scene.windows.forEach { window in
                                    // Her pencere için
                                    window.overrideUserInterfaceStyle = newValue ? .dark : .light
                                    // Yeni arayüz stili uygulanır: karanlık mod ise karanlık, değilse açık mod
                                }
                            }
                        }

                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 400, height: 1)
                        .foregroundColor(.gray.opacity(0.5))
                    
                    Button(action: {
                        signOut()
                        isSignedOut = true
                    }) {
                        Text("Sign Out")
                            .padding()
                            .foregroundColor(.red)
                    }
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 400, height: 1)
                        .foregroundColor(.gray.opacity(0.5))
                    
                    Spacer()
                }
            }
            .navigationBarBackButtonHidden()
            .fullScreenCover(isPresented: $isSignedOut) {
                // Present LoginView when isSignedOut becomes true
                LoginView()
            }

        }.navigationBarBackButtonHidden(true)
    }
    // Kullanıcı oturumunu kapatma işlevi
    func signOut() {
        do {
            // Firebase'den oturumu kapat
            try Auth.auth().signOut()
            // Oturum kapatıldıktan sonra gerekiyorsa ek mantık ekle
            print("u already sign out")
            // Kullanıcı zaten çıkış yapmışsa konsola mesaj yazdır
        } catch let error as NSError {
            // Hata durumunda hatayı konsola yazdır
            print("Error signing out: \(error.localizedDescription)")
        }
    }


}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
