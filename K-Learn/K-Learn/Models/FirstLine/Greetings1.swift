//
//  Greetings1.swift
//  K-Learn
//
//  Created by berat kaya on 13.04.2024.
//

import Foundation

struct QuestionTypeForGreetings {
    let id: String
    let text: String
    let correctAnswer: String
    let options: [String]
    let character: String
    let fontSize: CGFloat
}

/*
 JapaneseLetter(character: "こんにちは！", name: "Hello!"),
 
 JapaneseLetter(character: "おはようございます！", name: "Good morning!"),
 
 JapaneseLetter(character: "元気ですか？", name: "How are you?"),
 
 JapaneseLetter(character: "お名前は何ですか？", name: "What's your name?"),
 
 JapaneseLetter(character: "出身はどこですか？", name: "Where are you from?"),
 
 JapaneseLetter(character: "おいくつですか？", name: "How old are you?"),
 
 JapaneseLetter(character: "はじめまして！", name: "Nice to meet you!"),
 
 JapaneseLetter(character: "さようなら！", name: "Goodbye!"),
 
 JapaneseLetter(character: "また後で会いましょう！", name: "See you later!")
 */

let questionsForGreetings = [
    QuestionTypeForGreetings(id: "1", text: "What does that expression mean?", correctAnswer: "See you later!", options: ["Hello!", "See you later!", "How are you?"], character: "また後で会いましょう！", fontSize: 20),
    
    QuestionTypeForGreetings(id: "2", text: "What does this expression mean?", correctAnswer: "Where are you from?", options: ["Goodbye!", "How old are you?", "Where are you from?"], character: "出身はどこですか？", fontSize: 25),
    
    QuestionTypeForGreetings(id: "3", text: "What does this expression mean?", correctAnswer: "Hello!", options: ["Good morning!", "Goodbye!", "Hello!"], character: "こんにちは", fontSize: 30),
    
    QuestionTypeForGreetings(id: "4", text: "What does this expression mean?", correctAnswer: "How are you?", options: ["How are you?", "Good morning!", "Nice to meet you!"], character: "元気ですか？", fontSize: 30),
    
    QuestionTypeForGreetings(id: "5", text: "What does this expression mean?", correctAnswer: "How old are you?", options: ["Hello!", "How are you?", "How old are you?"], character: "おいくつですか？", fontSize: 25),
    
    QuestionTypeForGreetings(id: "6", text: "What does this expression mean?", correctAnswer: "What's your name?", options: ["What's your name?", "Where are you from?", "Goodbye!"], character: "お名前は何ですか？", fontSize: 20)
]

