//
//  Numbers0.swift
//  K-Learn
//
//  Created by berat kaya on 17.04.2024.
//

import Foundation

struct JapaneseWordsModelForNumbers: Identifiable {
    let id = UUID()
    let character: String
    let name: String
}

struct JapaneseWordsModelForNumbersAndQuantities {
    static let numbersAndQuantities: [JapaneseWordsModelForNumbers] = [
        JapaneseWordsModelForNumbers(character: "ゼロ", name: "Zero"),
        
        JapaneseWordsModelForNumbers(character: "一", name: "One"),
        
        JapaneseWordsModelForNumbers(character: "二", name: "Two"),
        
        JapaneseWordsModelForNumbers(character: "三", name: "Three"),
        
        JapaneseWordsModelForNumbers(character: "四", name: "Four"),
        
        JapaneseWordsModelForNumbers(character: "五", name: "Five"),
        
        JapaneseWordsModelForNumbers(character: "六", name: "Six"),
        
        JapaneseWordsModelForNumbers(character: "七", name: "Seven"),
        
        JapaneseWordsModelForNumbers(character: "八", name: "Eight"),
        
        JapaneseWordsModelForNumbers(character: "九", name: "Nine"),
        
        JapaneseWordsModelForNumbers(character: "十", name: "Ten"),
        
        JapaneseWordsModelForNumbers(character: "百", name: "Hundred"),
        
        JapaneseWordsModelForNumbers(character: "千", name: "Thousand"),
        
        JapaneseWordsModelForNumbers(character: "万", name: "Ten Thousand"),
        
        JapaneseWordsModelForNumbers(character: "億", name: "Hundred Million"),
        
        JapaneseWordsModelForNumbers(character: "兆", name: "Trillion"),
        
        JapaneseWordsModelForNumbers(character: "何", name: "What"),
        
        JapaneseWordsModelForNumbers(character: "いくつ", name: "How Many"),
        
        JapaneseWordsModelForNumbers(character: "少ない", name: "Few"),
        
        JapaneseWordsModelForNumbers(character: "多い", name: "Many")
    ]
}
