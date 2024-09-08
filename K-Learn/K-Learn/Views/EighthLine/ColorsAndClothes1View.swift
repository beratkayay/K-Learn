//
//  ColorsAndClothes1View.swift
//  K-Learn
//
//  Created by berat kaya on 20.04.2024.
//

import SwiftUI
import Speech
import AVFoundation



struct ColorsAndClothes1View: View {
    @State private var isSpeaking = false
    let synthesizer = AVSpeechSynthesizer()
    let utterance = AVSpeechUtterance(string: "")
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectedOption: Int? = nil
    @State private var isAnswerCorrect = false
    @State private var currentQuestionIndex = 0
    @State private var testCompleted = false
    @State private var remainingHearts = 5
    @State private var correctAnswersCount = 0
    @State private var showActionSheet = false
    @State private var isAlphabetTestViewPresented = false  // New state variable
    
    @ObservedObject var authViewModel = AuthViewModel()
    let questionsForColorsAndClothes = [
        QuestionTypeForColorsAndClothes(id: "1", text: "What does that word mean?", correctAnswer: "Jacket", options: ["Jacket", "Pants", "Sunglasses"], character: "ジャケット", fontSize: 20),
        QuestionTypeForColorsAndClothes(id: "2", text: "How do you say the following word in Japanese?", correctAnswer: "シャツ", options: ["手袋", "ベルト", "シャツ"], character: "shirt", fontSize: 30),
        QuestionTypeForColorsAndClothes(id: "3", text: "What color is '赤' in English?", correctAnswer: "Red", options: ["Blue", "Yellow", "Red"], character: "赤", fontSize: 25),
        QuestionTypeForColorsAndClothes(id: "4", text: "What is '靴' in English?", correctAnswer: "Shoes", options: ["Pants", "Shoes", "Hat"], character: "靴", fontSize: 22),
        QuestionTypeForColorsAndClothes(id: "5", text: "How do you say 'Yellow' in Japanese?", correctAnswer: "黄色", options: ["赤", "青", "黄色"], character: "黄色", fontSize: 18),
        QuestionTypeForColorsAndClothes(id: "6", text: "What is the Japanese word for 'hat'?", correctAnswer: "帽子", options: ["ワンピース", "手袋", "帽子"], character: "帽子", fontSize: 24),
        QuestionTypeForColorsAndClothes(id: "7", text: "Which color is '白'?", correctAnswer: "White", options: ["Green", "Black", "White"], character: "白", fontSize: 26),
        QuestionTypeForColorsAndClothes(id: "8", text: "What do you call 'ネクタイ' in English?", correctAnswer: "Tie", options: ["Socks", "Scarf", "Tie"], character: "ネクタイ", fontSize: 21)
    ]

    var body: some View {
        VStack {
            if !testCompleted {
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
                                Image(systemName: "x.circle")
                                    .foregroundColor(.red)
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            .padding()
                            Spacer()
                            
                            ProgressView(value: Double(currentQuestionIndex), total: Double(questionsForColorsAndClothes.count))
                                .progressViewStyle(LinearProgressViewStyle())
                                .padding(.horizontal)
                            
                            Text("❤️ \(remainingHearts)")
                                .font(.system(size: 25))
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.red)
                        }
                        
                        Text(questionsForColorsAndClothes[currentQuestionIndex].text)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding()
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 200, height: 200)
                                .foregroundColor(.brown)
                                .cornerRadius(30)
                                .opacity(1)
                            
                            Text(questionsForColorsAndClothes[currentQuestionIndex].character)
                                .font(.system(size: 30))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding()
                            
                            Image(systemName: "airpods")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 10))
                                .offset(x: 80, y: 80)
                        }
                        .onTapGesture {
                            speakCharacter(text: questionsForColorsAndClothes[currentQuestionIndex].character)
                        }

                        Spacer()
                        
                        VStack(spacing: 20) {
                            ForEach(0..<questionsForColorsAndClothes[currentQuestionIndex].options.count, id: \.self) { index in
                                Button(action: {
                                    selectedOption = index
                                    checkAnswer()
                                }) {
                                    Text(questionsForColorsAndClothes[currentQuestionIndex].options[index])
                                        .padding()
                                        .frame(width: 300)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .foregroundColor(selectedOption == index ? (isAnswerCorrect ? .green : .red) : .gray.opacity(0.3))
                                                .opacity(1)
                                        )
                                        .foregroundColor(.primary)
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                                .disabled(selectedOption != nil)
                            }
                        }
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            
                            Button(action: {
                                nextQuestion()
                            }) {
                                Text("Next")
                                    .padding()
                                    .frame(width: 100)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(isAnswerCorrect || selectedOption != nil ? .brown: .brown)
                                            .opacity(1)
                                    )
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            .padding(.top, 20)
                            .opacity(isAnswerCorrect || selectedOption != nil ? 1.0 : 0.4)
                            .allowsHitTesting(isAnswerCorrect || selectedOption != nil)
                        }
                        .padding()
                    }

                }
            } else {
                VStack {
                    Text("Quiz Completed")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.primary)
                    
                    Text("Your success rate is \(String(format: "%.2f", calculateCorrectAnswerPercentage()))%")
                        .font(.headline)
                        .padding(.bottom, 20)
                        .foregroundColor(.primary)
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("OK")
                            .frame(width: 100, height: 40)
                            .padding()
                            .background(Color.brown)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
            .onDisappear {
                // Call the function to update user level when test is completed
                updateFirebaseLevel()
            }
        
    }
    func updateFirebaseLevel() {
        // Assuming you have some logic to calculate the user's level
        let userLevel = 1
        
        // Call the function to update the user's level in Firebase
        authViewModel.updateUserLevel(level: userLevel)
    }
    
    func calculateCorrectAnswerPercentage() -> Double {
        guard questionsForColorsAndClothes.count > 0 else { return 0.0 }

        return Double(correctAnswersCount) / Double(questionsForColorsAndClothes.count) * 100
    }

 
    func checkAnswer() {
        let correctAnswer = questionsForColorsAndClothes[currentQuestionIndex].correctAnswer
        
        if let selectedOption = selectedOption {
            let selectedText = questionsForColorsAndClothes[currentQuestionIndex].options[selectedOption]
            isAnswerCorrect = selectedText == correctAnswer
            
            if isAnswerCorrect {
                correctAnswersCount += 1
            } else {
                remainingHearts -= 1
            }
        }
        if currentQuestionIndex == questionsForColorsAndClothes.count {
            testCompleted = true
        }
    }
    
    func nextQuestion() {
        if currentQuestionIndex < questionsForColorsAndClothes.count - 1 {
            currentQuestionIndex += 1
            selectedOption = nil
            isAnswerCorrect = false
        } else {
            testCompleted = true
        }
    }
    
    func speakCharacter(text: String) {
        let newUtterance = AVSpeechUtterance(string: text)
        newUtterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        
        if !isSpeaking {
            synthesizer.speak(newUtterance)
        } else {
            synthesizer.stopSpeaking(at: .immediate)
        }
        isSpeaking.toggle()
    }
    

}



#Preview {
    ColorsAndClothes1View()
}
