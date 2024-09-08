//
//  WhoYouAre0.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation

struct JapaneseWordsModelForDailyRoutines0: Identifiable {
    let id = UUID()
    let character: String
    let name: String
}


struct JapaneseWordsModelForDailyRoutines {
    static let dailyRoutines: [JapaneseWordsModelForDailyRoutines0] = [
        JapaneseWordsModelForDailyRoutines0(character: "起きる", name: "Wake up"),
        JapaneseWordsModelForDailyRoutines0(character: "朝ごはんを食べる", name: "Eat breakfast"),
        JapaneseWordsModelForDailyRoutines0(character: "仕事に行く", name: "Go to work"),
        JapaneseWordsModelForDailyRoutines0(character: "昼ごはんを食べる", name: "Eat lunch"),
        JapaneseWordsModelForDailyRoutines0(character: "仕事をする", name: "Work"),
        JapaneseWordsModelForDailyRoutines0(character: "帰る", name: "Go home"),
        JapaneseWordsModelForDailyRoutines0(character: "夕食を食べる", name: "Eat dinner"),
        JapaneseWordsModelForDailyRoutines0(character: "休む", name: "Relax"),
        JapaneseWordsModelForDailyRoutines0(character: "寝る", name: "Go to bed"),
        JapaneseWordsModelForDailyRoutines0(character: "寝坊する", name: "Wake up late"),
        JapaneseWordsModelForDailyRoutines0(character: "シャワーを浴びる", name: "Take a shower"),
        JapaneseWordsModelForDailyRoutines0(character: "歯を磨く", name: "Brush teeth"),
        JapaneseWordsModelForDailyRoutines0(character: "公共交通機関を利用する", name: "Use public transport"),
        JapaneseWordsModelForDailyRoutines0(character: "車で通勤する", name: "Drive to work"),
        JapaneseWordsModelForDailyRoutines0(character: "仕事に着く", name: "Arrive at work"),
        JapaneseWordsModelForDailyRoutines0(character: "休憩をとる", name: "Have a break"),
        JapaneseWordsModelForDailyRoutines0(character: "おやつを食べる", name: "Eat snacks"),
        JapaneseWordsModelForDailyRoutines0(character: "コーヒーを飲む", name: "Drink coffee"),
        JapaneseWordsModelForDailyRoutines0(character: "夕食の準備をする", name: "Prepare dinner"),
        JapaneseWordsModelForDailyRoutines0(character: "テレビを見る", name: "Watch TV"),
        JapaneseWordsModelForDailyRoutines0(character: "本を読む", name: "Read a book"),
        JapaneseWordsModelForDailyRoutines0(character: "リラックスする", name: "Relax"),
        JapaneseWordsModelForDailyRoutines0(character: "運動する", name: "Exercise"),
        JapaneseWordsModelForDailyRoutines0(character: "友達に電話する", name: "Call friends"),
        JapaneseWordsModelForDailyRoutines0(character: "音楽を聴く", name: "Listen to music"),
        JapaneseWordsModelForDailyRoutines0(character: "寝る前の物語を読む", name: "Read bedtime story"),
        JapaneseWordsModelForDailyRoutines0(character: "明日の準備をする", name: "Prepare for tomorrow"),
        JapaneseWordsModelForDailyRoutines0(character: "瞑想する", name: "Meditate"),
    ]
}
