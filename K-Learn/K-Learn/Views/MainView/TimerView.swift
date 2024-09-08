//
//  TimerView.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import SwiftUI
import SwiftUI
import CoreData
import Combine

// StreakCount sınıfını güncelleyelim
class StreakCount: ObservableObject {
    static let shared = StreakCount()
    @Published var fireCount: Int = UserDefaults.standard.integer(forKey: "fireCount") {
        didSet {
            UserDefaults.standard.set(fireCount, forKey: "fireCount")
        }
    }
}

// TimerViewModel sınıfını güncelleyelim
class TimerViewModel: ObservableObject {
    static let shared = TimerViewModel()
    var timerCompleted = PassthroughSubject<Void, Never>()
}

// TimerView'ı güncelleyelim
struct TimerView: View {
    @State private var showCongratulation = false
    @State private var selectedButton: String?
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var streakCount: StreakCount = StreakCount.shared
    @ObservedObject var timerViewModel: TimerViewModel = TimerViewModel.shared
    @State private var showAlert = false
    @State private var lastChosenDate: Date?
    @State private var fireCount: Int {
        didSet {
            UserDefaults.standard.set(fireCount, forKey: "fireCount")
        }
    }
    
    init(streakCount: StreakCount = StreakCount.shared, timerViewModel: TimerViewModel = TimerViewModel.shared) {
        self.streakCount = streakCount
        self.timerViewModel = timerViewModel
        _fireCount = State(initialValue: UserDefaults.standard.integer(forKey: "fireCount"))
        _lastChosenDate = State(initialValue: UserDefaults.standard.object(forKey: "lastChosenDate") as? Date)

        // Check if the user has previously selected a daily goal
        if let lastChosenDate = lastChosenDate, Date().timeIntervalSince(lastChosenDate) < 24 * 60 * 60 {
            // Calculate the remaining time based on the previous goal
            let remainingTime = Int(24 * 60 * 60 - Date().timeIntervalSince(lastChosenDate))
            startTimer(seconds: remainingTime)
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack {
                        ZStack(alignment: .leading) {
                            VStack {
                                HStack{
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }) {
                                        Image(systemName: "arrow.backward.circle")
                                            .foregroundColor(.blue)
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .padding(.leading)
                                    }
                                    HStack {
                                        Text("Pick a Daily Goal")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        Spacer()
                                    }
                                    Text("🔥\(fireCount)")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .padding()
                                        .foregroundColor(.primary)
                                        .cornerRadius(10)
                                }
                            }
                        }
                        VStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 350, height: 1)
                                .foregroundColor(.gray.opacity(0.5))
                            
                            HStack {
                                buttonWithCircle(text: "Casual 😎", seconds: 5*1)
                                Spacer()
                                Text("5 minutes a day")
                                    .foregroundColor(.primary)
                                    .padding(.trailing)
                            }
                            .fontWeight(.semibold)
                            .padding(.leading)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 350, height: 1)
                                .foregroundColor(.gray.opacity(0.5))
                            
                            HStack {
                                buttonWithCircle(text: "Regular 🧐", seconds: 10*60)
                                Spacer()
                                Text("10 minutes a day")
                                    .foregroundColor(.primary)
                                    .padding(.trailing)
                            }
                            .fontWeight(.semibold)
                            .padding(.leading)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 350, height: 1)
                                .foregroundColor(.gray.opacity(0.5))
                            
                            HStack {
                                buttonWithCircle(text: "Serious 🤓", seconds: 15*60)
                                Spacer()
                                Text("15 minutes a day")
                                    .foregroundColor(.primary)
                                    .padding(.trailing)
                            }
                            .fontWeight(.semibold)
                            .padding(.leading)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 350, height: 1)
                                .foregroundColor(.gray.opacity(0.5))
                            
                            HStack {
                                buttonWithCircle(text: "Insane 🤯", seconds: 20*60)
                                Spacer()
                                Text("20 minutes a day")
                                    .foregroundColor(.primary)
                                    .padding(.trailing)
                            }
                            .fontWeight(.semibold)
                            .padding(.leading)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 350, height: 1)
                                .foregroundColor(.gray.opacity(0.5))
                        }
                    }
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Can Only Choose Once Every 24 Hours"),
                    message: Text("You can only choose a daily goal once every 24 hours."),
                    dismissButton: .default(Text("OK"))
                )
            }
        }
        .navigationBarBackButtonHidden(true)
        .environmentObject(streakCount)
        .environmentObject(timerViewModel)
    }
    
    @State private var selectedSeconds: Int = 0
    
    func startTimer(seconds: Int) {
        // Check if 24 hours have passed since the last choice
        if let lastChosenDate = lastChosenDate,
           Date().timeIntervalSince(lastChosenDate) < 24 * 60 * 60 {
            // Inform the user that they can only choose once every 24 hours
            showAlert = true
            return
        }
        
        // Set the selectedSeconds based on the user's choice
        selectedSeconds = seconds
        
        // Save the waiting time in the CoreData context
        let waitingTime = WaitingTime(context: viewContext)
        waitingTime.seconds = Int64(seconds)
        
        do {
            try viewContext.save()
        } catch {
            print("Error saving waiting time: \(error.localizedDescription)")
        }
        
        // Schedule a timer to trigger after the specified time interval
        Timer.scheduledTimer(withTimeInterval: TimeInterval(seconds), repeats: false) { _ in
            // Perform UI updates within an animation block
            withAnimation {
                // Notify the TimerViewModel that the timer has completed
                timerViewModel.timerCompleted.send()
                
                // Set flags to show congratulation and trigger the alert
                showCongratulation = true
                showAlert = true
                
                // Update lastChosenDate after completing the timer
                lastChosenDate = Date()
                UserDefaults.standard.set(lastChosenDate, forKey: "lastChosenDate")
            }
        }
    }
    
    @ViewBuilder
    func buttonWithCircle(text: String, seconds: Int) -> some View {
        Button(action: {
            startTimer(seconds: seconds)
            selectedButton = text
        }) {
            HStack {
                Circle()
                    .foregroundColor(selectedButton == text ? .blue : .white)
                    .frame(width: 20, height: 20)
                    .overlay(
                        Circle()
                            .stroke(Color.gray, lineWidth: 2)
                    )
                
                Text(text)
                    .padding()
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            .environmentObject(StreakCount())
    }
}
