//
//  Numbers2View.swift
//  K-Learn
//
//  Created by berat kaya on 18.04.2024.
//

import SwiftUI


struct Numbers2View: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme

    @State private var remainingHearts = 5
    @State private var currentQuestionIndex = 0
    @State private var selectedPhrases: [String] = []
    @State private var isAnswerCorrect: Bool = false
    @State private var isQuestionAnswered: Bool = false

    @ObservedObject var authViewModel = AuthViewModel()
    
    let questions = QuestionsForNumbersAndQuantities().questions

    var body: some View {
        VStack {
            if currentQuestionIndex < questions.count   {
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
                            Spacer()
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
                            
                            ProgressView(value: Double(currentQuestionIndex), total: Double(questions.count))
                                .progressViewStyle(LinearProgressViewStyle())
                                .padding(.horizontal)
                            
                            Text("❤️ \(remainingHearts)")
                                .font(.system(size: 25))
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.red)
                        }
                        .padding(.top)
                        
                        Text(questions[currentQuestionIndex].questionText)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350, height: 125)
                            .foregroundColor(isAnswerCorrect ? .green : (isQuestionAnswered ? .red : .brown.opacity(0.6)))
                            .overlay(
                                HStack(spacing: 10) {
                                    ForEach(selectedPhrases, id: \.self) { phrase in
                                        Text(phrase)
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(isCorrectPhrase(phrase) ? .white : .white)
                                    }
                                }
                                    .padding()
                            )
                            .padding()
                        
                        
                        
                        Spacer()
                        
                        VStack(spacing: 30) {
                            HStack {
                                ForEach(questions[currentQuestionIndex].answerOptions.prefix(2), id: \.self) { option in
                                    ZStack {
                                        Text(option)
                                        RoundedRectangle(cornerRadius: 20)
                                            .frame(width: 180, height: 60)
                                            .foregroundColor(.gray)
                                            .opacity(0.3)
                                            .onTapGesture {
                                                addToSelectedPhrases(option)
                                            }
                                    }
                                }
                            }
                            
                            HStack {
                                ForEach(questions[currentQuestionIndex].answerOptions.dropFirst(2).dropLast(2), id: \.self) { option in
                                    ZStack {
                                        Text(option)
                                        RoundedRectangle(cornerRadius: 20)
                                            .frame(width: 180, height: 60)
                                            .foregroundColor(.gray)
                                            .opacity(0.3)
                                            .onTapGesture {
                                                addToSelectedPhrases(option)
                                            }
                                    }
                                }
                            }
                            HStack {
                                ForEach(questions[currentQuestionIndex].answerOptions.suffix(2), id: \.self) { option in
                                    ZStack {
                                        Text(option)
                                        RoundedRectangle(cornerRadius: 20)
                                            .frame(width: 180, height: 60)
                                            .foregroundColor(.gray)
                                            .opacity(0.3)
                                            .onTapGesture {
                                                addToSelectedPhrases(option)
                                            }
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                        
                        
                        Spacer()
                        
                        Button(action: {
                            if !isQuestionAnswered {
                                checkAnswer()
                                isQuestionAnswered = true
                            } else {
                                moveToNextQuestion()
                                isQuestionAnswered = false
                            }
                        }) {
                            HStack {
                                Spacer()
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 125, height: 50)
                                        .foregroundColor(selectedPhrases.isEmpty && !isQuestionAnswered ? Color.brown.opacity(0.6) : .brown)
                                    Text(isQuestionAnswered ? "Next" : "Next")
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold)
                                }
                            }
                            
                        }
                        .padding()
                        .disabled(selectedPhrases.isEmpty && !isQuestionAnswered) // Disable the button if no answer is selected and question is not answered
                    }
                }.navigationBarBackButtonHidden(true)
                    .onDisappear {
                        // Call the function to update user level when test is completed
                        updateFirebaseLevel()
                    }
                    
            } else  {
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
        }
    }
    func updateFirebaseLevel() {
        // Assuming you have some logic to calculate the user's level
        let userLevel = 9
        
        // Call the function to update the user's level in Firebase
        authViewModel.updateUserLevel(level: userLevel)
    }
    
   
    private func calculateCorrectAnswerPercentage() -> Double {
        let correctAnswers = questions.enumerated().filter { index, question in
            let combinedAnswer = question.answerOptions.joined()
            let isAnswerCorrect = selectedPhrases.allSatisfy { phrase in
                return question.correctAnswer.contains(phrase)
            }
            return isAnswerCorrect
        }

        let successRate = Double(correctAnswers.count) / Double(questions.count) * 100.0
        let adjustedSuccessRate = successRate * Double(remainingHearts) / 5.0 // Assuming you start with 5 hearts

        return max(adjustedSuccessRate, 0.0) // Ensure the success rate is not negative
    }

    private func addToSelectedPhrases(_ phrase: String) {
        if selectedPhrases.count < 3 {
            selectedPhrases.append(phrase)
        } else {
            selectedPhrases.removeAll()
            selectedPhrases.append(phrase)
        }
    }

    private func checkAnswer() {
        let combinedAnswer = selectedPhrases.joined()
        isAnswerCorrect = combinedAnswer == questions[currentQuestionIndex].correctAnswer
        if !isAnswerCorrect {
            remainingHearts -= 1
        }

    }

    private func moveToNextQuestion() {
        if currentQuestionIndex < questions.count  {
            currentQuestionIndex += 1
            selectedPhrases.removeAll()
            isAnswerCorrect = false
        } else {
            // Handle when there are no more questions (optional)
            // You can navigate to a different view or perform any other action
        }
    }

    private func isCorrectPhrase(_ phrase: String) -> Bool {
        return questions[currentQuestionIndex].correctAnswer.contains(phrase)
    }
}

#Preview {
    Numbers2View()
}
