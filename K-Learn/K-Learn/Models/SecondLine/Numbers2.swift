//
//  Numbers2.swift
//  K-Learn
//
//  Created by berat kaya on 18.04.2024.
//

import Foundation

struct QuestionTypeforNumbersAndQuantities {
    let questionText: String
    let correctAnswer: String
    let answerOptions: [String]


}

struct QuestionsForNumbersAndQuantities {
    let questions = [
        
        QuestionTypeforNumbersAndQuantities(questionText: "What is the symbol for zero in Japanese?", correctAnswer: "ゼロ", answerOptions: ["一", "二", "三", "ゼロ", "四", "五"]),
        
        QuestionTypeforNumbersAndQuantities(questionText: "What is the symbol for one hundred in Japanese?", correctAnswer: "百", answerOptions: ["千", "万", "億", "百", "十", "十万"]),
        
        QuestionTypeforNumbersAndQuantities(questionText: "How would you say 'How many?' in Japanese?", correctAnswer: "いくつ", answerOptions: ["何", "いくつ", "少ない", "多い", "十", "百"]),
        
        QuestionTypeforNumbersAndQuantities(questionText:
        """
        A: What is this?
        B: ...
        How would you respond this in Japanese.
        """
                 , correctAnswer: "何", answerOptions: ["何", "いくつ", "何百", "十", "千", "万"]),
        
        QuestionTypeforNumbersAndQuantities(questionText: "What is the symbol for ten in Japanese?", correctAnswer: "十", answerOptions: ["百", "千", "十", "万", "ゼロ", "一"]),
        
        QuestionTypeforNumbersAndQuantities(questionText: "How would you say 'Few' in Japanese?", correctAnswer: "少ない", answerOptions: ["多い", "少ない", "いくつ", "何", "百", "万"]),
        
        // Yeni sorular eklendi
        QuestionTypeforNumbersAndQuantities(questionText: "What is the symbol for three in Japanese?", correctAnswer: "三", answerOptions: ["一", "二", "三", "四", "五", "六"]),
        
        QuestionTypeforNumbersAndQuantities(questionText: "How do you say 'Thousand' in Japanese?", correctAnswer: "千", answerOptions: ["十", "百", "千", "万", "億", "一"]),
        
        QuestionTypeforNumbersAndQuantities(questionText: "What does '何' mean in English?", correctAnswer: "What", answerOptions: ["How many", "Few", "Many", "What", "Where", "When"]),
        
        QuestionTypeforNumbersAndQuantities(questionText:
        """
        A: How many?
        B: ...
        What would you say in Japanese?
        """
                 , correctAnswer: "いくつ", answerOptions: ["いくつ", "何", "少ない", "多い", "何百", "何十"]),
        
        QuestionTypeforNumbersAndQuantities(questionText: "What is the symbol for five in Japanese?", correctAnswer: "五", answerOptions: ["一", "二", "三", "四", "五", "六"]),
        
        QuestionTypeforNumbersAndQuantities(questionText: "How would you say 'Many' in Japanese?", correctAnswer: "多い", answerOptions: ["少ない", "いくつ", "何", "多い", "百", "万"]),
        
    ]
}
