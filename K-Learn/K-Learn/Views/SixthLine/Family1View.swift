//
//  Animals1.swift
//  K-Learn
//
//  Created by berat kaya on 11.03.2024.
//

import SwiftUI

struct Family1View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectedCardID: String?
    @State private var isPopUpPresented = false
    @State private var navigateToWhoYouAre = false
    @State private var currentSetIndex = 0
    @State private var remainingHearts = 5
    @State private var correctAnswersCount = 0
    @State private var showAlert = false
    
    @ObservedObject var authViewModel = AuthViewModel()
    
    
    let firstCardSet = FirstCardSetForFamily()
    let secondCardSet = SecondCardSetForFamily()
    let thirdCardSet = ThirdCardSetForFamily()
    let fourthCardSet = FourthCardSetForFamily()
    let fifthCardSet = FifthCardSetForFamily()
    let sixthCardSet = SixthCardSetForFamily()
    


    let questionTitles = [
        "Which one of the following is a cat?",
        "Which one of the following is a rabbit?",
        "Which one of the following is pig?",
        "Which one of the following is a rabbit?",
        "Which one of the following is a bird?",
        "Which one of the following is a chicken?"

    ]

    var currentSet: [Cards] {
        if currentSetIndex == 0 {
            return firstCardSet.firstCards.map { card in
                var mutableCard = card
                mutableCard.fontSize = 90
                return mutableCard
            }
        } else if currentSetIndex == 1 {
            return secondCardSet.secondCards.map { card in
                var mutableCard = card
                mutableCard.fontSize = 90
                return mutableCard
            }
        }  else if currentSetIndex == 2 {
            return thirdCardSet.thirdCards.map { card in
                var mutableCard = card
                mutableCard.fontSize = 50
                return mutableCard
            }
        } else if currentSetIndex == 3 {
            return fourthCardSet.fourthCards.map { card in
                var mutableCard = card
                mutableCard.fontSize = 50
                return mutableCard
            }
        } else if currentSetIndex == 4 {
            return fifthCardSet.fifthCards.map { card in
                var mutableCard = card
                mutableCard.fontSize = 90
                return mutableCard
            }
        } else {
            return sixthCardSet.sixthCards.map { card in
                var mutableCard = card
                mutableCard.fontSize = 90
                return mutableCard
            }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                if currentSetIndex < questionTitles.count {
                    ZStack {
                        Color.yellow
                            .ignoresSafeArea()
                        
                        Circle()
                            .scale(2)
                            .foregroundColor(colorScheme == .dark ? .black : Color.white.opacity(0.6))
                        
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
                                
                                ProgressView(value: Double(currentSetIndex), total: Double(questionTitles.count))
                                    .progressViewStyle(LinearProgressViewStyle())
                                    .padding(.horizontal)
                                
                                Text("❤️ \(remainingHearts)")
                                    .font(.system(size: 25))
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .padding()
                                    .foregroundColor(.red)
                            }
                            Spacer()
                            Text(questionTitles[currentSetIndex])
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.primary)
                            
                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                                ForEach(currentSet) { card in
                                    BoxView(card: card, selectedCardID: $selectedCardID)
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.horizontal, 5)
                                        .padding(.vertical, 5)
                                }
                            }
                            Spacer()
                            
                            Button(action: {
                                if let selectedCardID = selectedCardID,
                                   let selectedCard = currentSet.first(where: { $0.id == selectedCardID }) {
                                    if selectedCard.isCorrect {
                                        correctAnswersCount += 1
                                    } else {
                                        remainingHearts -= 1
                                    }
                                }
                                currentSetIndex += 1
                                selectedCardID = nil
                                
                                if currentSetIndex == 4 {
                                    isPopUpPresented = true
                                }
                            }) {
                                HStack {
                                    Spacer()
                                    Text("Next")
                                        .frame(width: 70)
                                        .padding()
                                        .background(Color.brown)
                                        .cornerRadius(20)
                                        .foregroundColor(.white)
                                        .padding()
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                            }
                        }
                    }
                }else{
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
       
        .navigationBarBackButtonHidden(true)
        .onDisappear {
            // Call the function to update user level when test is completed
            updateFirebaseLevel()
        }
    }

    func updateFirebaseLevel() {
        // Assuming you have some logic to calculate the user's level
        let userLevel = 6
        
        // Call the function to update the user's level in Firebase
        authViewModel.updateUserLevel(level: userLevel)
    }
    func calculateCorrectAnswerPercentage() -> Double {
        let totalQuestions = questionTitles.count
        let successRate = Double(correctAnswersCount) / Double(totalQuestions) * 100.0
        return successRate
    }


}



#Preview {
    Family1View()
}
