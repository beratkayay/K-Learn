//
//  AlphabetModel.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation

struct JapaneseLetter: Identifiable {
    let id = UUID()
    let character: String
    let name: String
}


struct JapaneseWordsModelForGreetings {
    static let greetings: [JapaneseLetter] = [
        JapaneseLetter(character: "こんにちは！", name: "Hello!"),
        
        JapaneseLetter(character: "おはようございます！", name: "Good morning!"),
        
        JapaneseLetter(character: "元気ですか？", name: "How are you?"),
        
        JapaneseLetter(character: "お名前は何ですか？", name: "What's your name?"),
        
        JapaneseLetter(character: "出身はどこですか？", name: "Where are you from?"),
        
        JapaneseLetter(character: "おいくつですか？", name: "How old are you?"),
        
        JapaneseLetter(character: "はじめまして！", name: "Nice to meet you!"),
        
        JapaneseLetter(character: "さようなら！", name: "Goodbye!"),
        
        JapaneseLetter(character: "また後で会いましょう！", name: "See you later!")
    ]
}

