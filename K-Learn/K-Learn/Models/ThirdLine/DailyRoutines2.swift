//
//  WhoYouAre2.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation

struct QuestionTypeforDailyRoutines {
    let questionText: String
    let correctAnswer: String
    let answerOptions: [String]


}

struct QuestionsForDailyRoutines {
    let questions = [
        
        QuestionTypeforDailyRoutines(questionText: "What is the symbol for wake up in Japanese?", correctAnswer: "起きる", answerOptions: ["起きる", "朝ごはんを食べる", "仕事に行く", "昼ごはんを食べる", "仕事をする", "帰る"]),
        
        QuestionTypeforDailyRoutines(questionText: "What is the symbol for go to work in Japanese?", correctAnswer: "仕事に行く", answerOptions: ["起きる", "朝ごはんを食べる", "仕事に行く", "昼ごはんを食べる", "仕事をする", "帰る"]),
        
        QuestionTypeforDailyRoutines(questionText: "What is the symbol for eat lunch in Japanese?", correctAnswer: "昼ごはんを食べる", answerOptions: ["起きる", "朝ごはんを食べる", "仕事に行く", "昼ごはんを食べる", "仕事をする", "帰る"]),
        
        QuestionTypeforDailyRoutines(questionText: "What is the symbol for go home in Japanese?", correctAnswer: "帰る", answerOptions: ["起きる", "朝ごはんを食べる", "仕事に行く", "昼ごはんを食べる", "仕事をする", "帰る"]),
        
        QuestionTypeforDailyRoutines(questionText: "What is the symbol for relax in Japanese?", correctAnswer: "休む", answerOptions: ["休む", "仕事をする", "夕食を食べる", "テレビを見る", "寝る", "リラックスする"]),
        
        QuestionTypeforDailyRoutines(questionText: "What is the symbol for go to bed in Japanese?", correctAnswer: "寝る", answerOptions: ["休む", "仕事をする", "夕食を食べる", "テレビを見る", "寝る", "リラックスする"]),
        
        // Yeni sorular
        QuestionTypeforDailyRoutines(questionText: "What is the symbol for drink coffee in Japanese?", correctAnswer: "コーヒーを飲む", answerOptions: ["お茶を飲む", "コーヒーを飲む", "紅茶を飲む", "ジュースを飲む", "水を飲む", "牛乳を飲む"]),
        
        QuestionTypeforDailyRoutines(questionText: "How would you say 'What time is it?' in Japanese?", correctAnswer: "何時ですか", answerOptions: ["何曜日ですか", "何時ですか", "何月ですか", "何日ですか", "今日は何日ですか", "何歳ですか"]),
        
        QuestionTypeforDailyRoutines(questionText: "What is the symbol for brush teeth in Japanese?", correctAnswer: "歯を磨く", answerOptions: ["歯を磨く", "手を洗う", "顔を洗う", "髪をとかす", "爪を切る", "顔を洗う"]),
        
        QuestionTypeforDailyRoutines(questionText: "How would you say 'Take a shower' in Japanese?", correctAnswer: "シャワーを浴びる", answerOptions: ["風呂に入る", "お風呂を沸かす", "シャワーを浴びる", "洗面所で歯を磨く", "シャンプーをする", "シャワーを止める"]),
        
        QuestionTypeforDailyRoutines(questionText: "What is the symbol for arrive at work in Japanese?", correctAnswer: "仕事に着く", answerOptions: ["仕事に行く", "電車に乗る", "自転車で行く", "徒歩で行く", "仕事に着く", "車で通勤する"]),
        
    ]
}
