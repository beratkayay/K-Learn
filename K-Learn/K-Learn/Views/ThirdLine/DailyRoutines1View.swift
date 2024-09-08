//
//  WhoYouAre1View.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI

struct DailyRoutines1View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectedCardID: String?
    @State private var isPopUpPresented = false
    @State private var navigateToWhoYouAre = false
    @State private var currentSetIndex = 0
    @State private var remainingHearts = 5
    @State private var correctAnswersCount = 0

    @ObservedObject var authViewModel = AuthViewModel()
    
    let firstSet = FirstCardSetForDailyRoutines()
    let secondSet = SecondCardSetForDailyRoutines()
    let thirdSet = ThirdCardSetForDailyRoutines()
    let fourthSet = FourthCardSetForDailyRoutines()
    let fifthSet = FifthCardSetForDailyRoutines()
    let sixthSet = SixthCardSetForDailyRoutines()
    let seventhSet = SeventhCardSetForDailyRoutines()
    let eighthSet = EighthCardSetForDailyRoutines()
    let ninthSet = NinthCardSetForDailyRoutines()
    let tenthSet = TenthCardSetForDailyRoutines()

    let questionTitles = [
        "Which one of the following is Korea?",
        "Which one of the following is a person",
        "Which one of the following is a French person?",
        """
        Which one of the following is saying
        'korean person'?
        """,
        "Which one of the following is Italy?",
        "Which one of the following is saying 'student'?",
    ]

    var currentSet: [Cards] {
        if currentSetIndex == 0 {
            return firstSet.firstSet.map { card in
                var mutableCard = card
                mutableCard.fontSize = 90
                return mutableCard
            }
        } else if currentSetIndex == 1 {
            return secondSet.secondSet.map { card in
                var mutableCard = card
                mutableCard.fontSize = 40
                return mutableCard
            }
        } else if currentSetIndex == 2 {
            return thirdSet.thirdSet.map { card in
                var mutableCard = card
                mutableCard.fontSize = 40
                return mutableCard
            }
        } else if currentSetIndex == 3 {
            return fourthSet.fourthSet.map { card in
                var mutableCard = card
                mutableCard.fontSize = 40
                return mutableCard
            }
        } else if currentSetIndex == 4 {
            return fifthSet.fifthSet.map { card in
                var mutableCard = card
                mutableCard.fontSize = 90
                return mutableCard
            }
        } else if currentSetIndex == 3 {
            return sixthSet.sixthSet.map { card in
                var mutableCard = card
                mutableCard.fontSize = 40
                return mutableCard
            }
        } else if currentSetIndex == 4 {
            return seventhSet.seventhSet.map { card in
                var mutableCard = card
                mutableCard.fontSize = 90
                return mutableCard
            }
        } else if currentSetIndex == 3 {
            return eighthSet.eighthSet.map { card in
                var mutableCard = card
                mutableCard.fontSize = 40
                return mutableCard
            }
        } else if currentSetIndex == 4 {
            return ninthSet.ninthSet.map { card in
                var mutableCard = card
                mutableCard.fontSize = 90
                return mutableCard
            }
        } else {
            return tenthSet.tenthSet.map { card in
                var mutableCard = card
                mutableCard.fontSize = 40
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
            
            
        }.navigationBarBackButtonHidden(true)
            .onDisappear {
                // Call the function to update user level when test is completed
                updateFirebaseLevel()
            }
    }
    func updateFirebaseLevel() {
        // Assuming you have some logic to calculate the user's level
        let userLevel = 4
        
        // Call the function to update the user's level in Firebase
        authViewModel.updateUserLevel(level: userLevel)
    }
    func calculateCorrectAnswerPercentage() -> Double {
        let totalQuestions = questionTitles.count
        let successRate = Double(correctAnswersCount) / Double(totalQuestions) * 100.0
        return successRate
    }


}

struct BoxView: View {
    let card: Cards
    @Binding var selectedCardID: String?

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 180, height: 200)
                .foregroundColor(boxColor)

            VStack {
                Text(card.symbol)
                    .fontWeight(.bold)
                    .font(.system(size: card.fontSize))
                    .foregroundColor(.white)
                    .padding()

                if !card.text.isEmpty {
                    Rectangle()
                        .frame(width: 180, height: 4)
                        .foregroundColor(.white)

                    Text(card.text)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
        }
        .onTapGesture {
            if selectedCardID == nil {
                selectedCardID = card.id
            }
        }
        .contentShape(Rectangle())
    }

    var boxColor: Color {
        if selectedCardID == card.id {
            return card.isCorrect ? .green : .red
        } else {
            return .brown.opacity(0.8)
        }
    }
}

struct DailyRoutines1View_Previews: PreviewProvider {
    static var previews: some View {
        DailyRoutines1View()
    }
}
