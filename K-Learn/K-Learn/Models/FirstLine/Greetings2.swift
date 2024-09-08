//
//  Greetings2.swift
//  K-Learn
//
//  Created by berat kaya on 13.04.2024.
//

import Foundation

struct QuestionTypeforGreetings {
    let questionText: String
    let correctAnswer: String
    let answerOptions: [String]


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

struct QuestionsForGreetings{
    let questions = [
        
        QuestionTypeforGreetings(questionText: "Text 'Hello!' in Japanese.", correctAnswer: "こんにちは！", answerOptions: ["出身はどこですか？", "はじめまして！", "こんにちは！", "元気ですか？", "元気また後で会いましょう！か？ ", "さようなら！"]),
        
        QuestionTypeforGreetings(questionText: "Text 'Nice to meet you!' in Japanese.", correctAnswer: "はじめまして！", answerOptions: ["はじめまして！", "さようなら！", "おはようございます！", "こんにちは！", "また後で会いましょう！", "出身はどこですか？"]),
        
        QuestionTypeforGreetings(questionText: "Text 'Goodbye!' in Japanese.", correctAnswer: "さようなら！", answerOptions: ["元気ですか？", "こんにちは！", "おはようございます！", "はじめまして！", "また後で会いましょう！", "さようなら！"]),
        
        QuestionTypeforGreetings(questionText:
        """
        A: Good morning!
        B: ...
        How would you respond this in Japanese.
        """
                 , correctAnswer: "おはようございます！", answerOptions: ["さようなら！", "おはようございます！", "また後で会いましょう！", "出身はどこですか？", "はじめまして！", "元気ですか？"]),
        
        QuestionTypeforGreetings(questionText: "Text 'What's your name?' in Japanese.", correctAnswer: "お名前は何ですか？", answerOptions: ["お名前は何ですか？", "出身はどこですか？", "おいくつですか？", "おはようございます！", "さようなら！", "また後で会いましょう！"]),
        
        QuestionTypeforGreetings(questionText: "Text 'See you later!' in Japanese.", correctAnswer: "また後で会いましょう！", answerOptions: ["こんにちは！", "おはようございます！", "また後で会いましょう！", "元気ですか？", "お名前は何ですか？", "おいくつですか？"]),
        
    ]
}
