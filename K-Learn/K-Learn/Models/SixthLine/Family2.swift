//
//  Animals2.swift
//  K-Learn
//
//  Created by berat kaya on 11.03.2024.
//

import Foundation

struct QuestionTypeforFamily {
    let questionText: String
    let correctAnswer: String
    let answerOptions: [String]


}

/*
 struct JapaneseFamilyAndRelationships {
     static let familyAndRelationships: [JapaneseFamilyModel] = [
         JapaneseFamilyModel(character: "父", name: "Father"),
         JapaneseFamilyModel(character: "母", name: "Mother"),
         JapaneseFamilyModel(character: "息子", name: "Son"),
         JapaneseFamilyModel(character: "娘", name: "Daughter"),
         JapaneseFamilyModel(character: "兄", name: "Elder Brother"),
         JapaneseFamilyModel(character: "弟", name: "Younger Brother"),
         JapaneseFamilyModel(character: "姉", name: "Elder Sister"),
         JapaneseFamilyModel(character: "妹", name: "Younger Sister"),
         JapaneseFamilyModel(character: "祖父", name: "Grandfather"),
         JapaneseFamilyModel(character: "祖母", name: "Grandmother"),
         JapaneseFamilyModel(character: "孫", name: "Grandchild"),
         JapaneseFamilyModel(character: "叔父", name: "Uncle (Father's younger brother)"),
         JapaneseFamilyModel(character: "伯父", name: "Uncle (Father's elder brother)"),
         JapaneseFamilyModel(character: "叔母", name: "Aunt (Father's younger brother's wife)"),
         JapaneseFamilyModel(character: "伯母", name: "Aunt (Father's elder brother's wife)"),
         JapaneseFamilyModel(character: "叔父", name: "Uncle (Mother's younger brother)"),
         JapaneseFamilyModel(character: "伯父", name: "Uncle (Mother's elder brother)"),
         JapaneseFamilyModel(character: "叔母", name: "Aunt (Mother's younger brother's wife)"),
         JapaneseFamilyModel(character: "伯母", name: "Aunt (Mother's elder brother's wife)"),
         JapaneseFamilyModel(character: "いとこ", name: "Cousin"),
         JapaneseFamilyModel(character: "甥", name: "Nephew"),
         JapaneseFamilyModel(character: "姪", name: "Niece"),
         JapaneseFamilyModel(character: "義理の父", name: "Father-in-law"),
         JapaneseFamilyModel(character: "義理の母", name: "Mother-in-law"),
         JapaneseFamilyModel(character: "義理の息子", name: "Son-in-law"),
         JapaneseFamilyModel(character: "義理の娘", name: "Daughter-in-law"),
         JapaneseFamilyModel(character: "義理の兄", name: "Brother-in-law"),
         JapaneseFamilyModel(character: "義理の弟", name: "Brother-in-law"),
         JapaneseFamilyModel(character: "義理の姉", name: "Sister-in-law"),
         JapaneseFamilyModel(character: "義理の妹", name: "Sister-in-law"),
     ]
 }


 */

struct QuestionsForFamily{
    let questions = [
        
        QuestionTypeforFamily(questionText: "Text 'Father' in Japanese.", correctAnswer: "父", answerOptions: ["父", "母", "義理の父", "息子", "祖父 ", "祖母"]),
        QuestionTypeforFamily(questionText: "Text 'Mother' in Japanese.", correctAnswer: "母", answerOptions: ["父", "母", "義理の母", "息子", "祖父 ", "祖母"]),
        QuestionTypeforFamily(questionText: "What is 'Grandchild' in Japanese?", correctAnswer: "孫", answerOptions: ["父", "娘", "孫", "息子", "義理の兄", "義理の妹"]),
        QuestionTypeforFamily(questionText: "How do you say 'Uncle (Father's younger brother)' in Japanese?", correctAnswer: "叔父", answerOptions: ["叔父", "伯父", "叔母", "伯母", "いとこ", "甥"]),
        QuestionTypeforFamily(questionText: "What is 'Elder Brother' in Japanese?", correctAnswer: "兄", answerOptions: ["兄", "弟", "姉", "妹", "祖父", "祖母"]),
        QuestionTypeforFamily(questionText: "How do you say 'Aunt (Father's elder brother's wife)' in Japanese?", correctAnswer: "伯母", answerOptions: ["叔母", "伯母", "叔父", "伯父", "義理の母", "姉"]),
        QuestionTypeforFamily(questionText: "What is 'Niece' in Japanese?", correctAnswer: "姪", answerOptions: ["兄", "弟", "甥", "姪", "いとこ", "義理の娘"]),
        QuestionTypeforFamily(questionText: "Text 'Brother-in-law' in Japanese.", correctAnswer: "義理の兄", answerOptions: ["義理の父", "義理の兄", "義理の弟", "義理の姉", "義理の妹", "義理の息子"]),
        
        
    ]
}
