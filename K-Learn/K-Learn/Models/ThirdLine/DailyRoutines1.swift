//
//  WhoYouAre1.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation

struct Cards: Identifiable {
    let id: String
    let isCorrect: Bool
    let symbol: String
    let text: String
    let setIndex: Int
    var fontSize: CGFloat
}
/*
KoreanWords(character: "고양이", name: "cat"),
KoreanWords(character: "강아지", name: "dog"),
KoreanWords(character: "여우", name: "fox"),
KoreanWords(character: "돼지", name: "pig"),
KoreanWords(character: "새", name: "bird"),
KoreanWords(character: "물고기", name: "fish"),
KoreanWords(character: "나비", name: "butterfly"),
KoreanWords(character: "토끼", name: "rabbit")
 
 
 
 
 KoreanWords(character: "안녕하세요", name: "hello"),
 KoreanWords(character: "한국", name: "korea"),
 KoreanWords(character: "사람", name: "person"),
 KoreanWords(character: "파리", name: "paris"),
 KoreanWords(character: "한국 사람", name: "korean"),
 KoreanWords(character: "일본", name: "japan"),
 KoreanWords(character: "고양이", name: "cat"),
 KoreanWords(character: "프랑스 사람", name: "french"),
 KoreanWords(character: "일본 사람", name: "japanese"),
 KoreanWords(character: "학생", name: "student")
 KoreanWords(character: "이탈리아 사람", name: "italian")
 
 이탈리아
 */
// İlk kart seti
struct FirstCardSetForDailyRoutines {
    let firstSet: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "Wake up", text: "起きる", setIndex: 0, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "Eat breakfast", text: "朝ごはんを食べる", setIndex: 0, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "Go to work", text: "仕事に行く", setIndex: 0, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "Eat lunch", text: "昼ごはんを食べる", setIndex: 0, fontSize: 0),
    ]
}


// İkinci kart seti
struct SecondCardSetForDailyRoutines {
    let secondSet: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "Work", text: "仕事をする", setIndex: 1, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "Go home", text: "帰る", setIndex: 1, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "Eat dinner", text: "夕食を食べる", setIndex: 1, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "Relax", text: "休む", setIndex: 1, fontSize: 0),
    ]
}

struct ThirdCardSetForDailyRoutines {
    let thirdSet: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "Go to bed", text: "寝る", setIndex: 2, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "Wake up late", text: "寝坊する", setIndex: 2, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "Take a shower", text: "シャワーを浴びる", setIndex: 2, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "Brush teeth", text: "歯を磨く", setIndex: 2, fontSize: 0),
    ]
}

// Dördüncü kart seti
struct FourthCardSetForDailyRoutines {
    let fourthSet: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "Go to work", text: "仕事に行く", setIndex: 3, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "Use public transport", text: "公共交通機関を利用する", setIndex: 3, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "Drive to work", text: "車で通勤する", setIndex: 3, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "Arrive at work", text: "仕事に着く", setIndex: 3, fontSize: 0),
    ]
}

// Beşinci kart seti
struct FifthCardSetForDailyRoutines {
    let fifthSet: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "Eat lunch", text: "昼ごはんを食べる", setIndex: 4, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "Have a break", text: "休憩をとる", setIndex: 4, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "Eat snacks", text: "おやつを食べる", setIndex: 4, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "Drink coffee", text: "コーヒーを飲む", setIndex: 4, fontSize: 0),
    ]
}

struct SixthCardSetForDailyRoutines {
    let sixthSet: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "Go home", text: "家に帰る", setIndex: 5, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "Prepare dinner", text: "夕食の準備をする", setIndex: 5, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "Watch TV", text: "テレビを見る", setIndex: 5, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "Read a book", text: "本を読む", setIndex: 5, fontSize: 0),
    ]
}

struct SeventhCardSetForDailyRoutines {
    let seventhSet: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "Relax", text: "リラックスする", setIndex: 6, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "Exercise", text: "運動する", setIndex: 6, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "Call friends", text: "友達に電話する", setIndex: 6, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "Listen to music", text: "音楽を聴く", setIndex: 6, fontSize: 0),
    ]
}

struct EighthCardSetForDailyRoutines {
    let eighthSet: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "Go to bed", text: "寝る", setIndex: 7, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "Read bedtime story", text: "寝る前の物語を読む", setIndex: 7, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "Prepare for tomorrow", text: "明日の準備をする", setIndex: 7, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "Meditate", text: "瞑想する", setIndex: 7, fontSize: 0),
    ]
}

struct NinthCardSetForDailyRoutines {
    let ninthSet: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "Have a shower", text: "シャワーを浴びる", setIndex: 8, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "Brush teeth", text: "歯を磨く", setIndex: 8, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "Get dressed", text: "着替える", setIndex: 8, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "Check emails", text: "メールを確認する", setIndex: 8, fontSize: 0),
    ]
}

struct TenthCardSetForDailyRoutines {
    let tenthSet: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "Workout", text: "トレーニングする", setIndex: 9, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "Have breakfast", text: "朝食をとる", setIndex: 9, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "Write in journal", text: "日記を書く", setIndex: 9, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "Make coffee", text: "コーヒーを入れる", setIndex: 9, fontSize: 0),
    ]
}
