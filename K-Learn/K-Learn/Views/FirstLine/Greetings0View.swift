//
//  KoreanAlphabetView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI
import AVFoundation

struct Greetings0View: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    let greetings = JapaneseWordsModelForGreetings.greetings
    @State private var isRocking = false
    @State private var speechSynthesizer = AVSpeechSynthesizer()

    var body: some View {
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
                    }
                    .padding(.leading)
                    Spacer()
                }

                HStack {
                    Text("Greetings")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                }

                List {
                     
                        ForEach(greetings) { letter in
                            VStack(alignment: .leading) {
                                Text(letter.character)
                                    .font(.title)
                                    .onTapGesture {
                                        speakJapanese(letter.character)
                                    }

                                Text(letter.name)
                                    .font(.body)
                                    .foregroundColor(.gray)
                            }
                            .padding()
                        }
                    

     
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }

    private func speakJapanese(_ text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")

        speechSynthesizer.stopSpeaking(at: .immediate)
        speechSynthesizer.speak(utterance)
    }

}

#Preview {
    Greetings0View()
}
