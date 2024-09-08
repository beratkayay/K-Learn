//
//  Animals0.swift
//  K-Learn
//
//  Created by berat kaya on 11.03.2024.
//

import SwiftUI
import AVFoundation

struct Family0View: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    
    let familyAndRelationships = JapaneseFamilyAndRelationships.familyAndRelationships
    
    @State private var isRocking = false
    @State private var speechSynthesizer = AVSpeechSynthesizer()
    
    var body: some View {
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
                HStack {
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrow.backward.circle")
                            .foregroundColor(.blue)
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    .padding(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("Words")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                }
                
                List {
                    Section(header: Text("")) {
                        ForEach(familyAndRelationships) { word in
                            VStack(alignment: .leading) {
                                Text(word.character)
                                    .font(.title)
                                    .onTapGesture {
                                        speakJapaneseCharacter(word.character)
                                    }
                                Text(word.name)
                                    .font(.body)
                                    .foregroundColor(.gray)
                            }
                            .padding()
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    
    private func speakJapaneseCharacter(_ character: String) {
          let utterance = AVSpeechUtterance(string: character)
          utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
          
          speechSynthesizer.stopSpeaking(at: .immediate)  // Stop any ongoing speech
          speechSynthesizer.speak(utterance)
      }
  }

#Preview {
    Family0View()
}
