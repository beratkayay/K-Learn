//
//  Numbers1.swift
//  K-Learn
//
//  Created by berat kaya on 17.04.2024.
//

import Foundation

struct CardsForNumbers: Identifiable {
    let id: String
    let isCorrect: Bool
    let symbol: String
    let text: String
    let setIndex: Int
    var fontSize: CGFloat
}

    struct FirstCardSetForNumbers {
        let firstSet: [Cards] = [
            Cards(id: "1", isCorrect: true, symbol: "0", text: "ゼロ", setIndex: 0, fontSize: 0),
            Cards(id: "2", isCorrect: false, symbol: "1", text: "一", setIndex: 0, fontSize: 0),
            Cards(id: "3", isCorrect: false, symbol: "2", text: "二", setIndex: 0, fontSize: 0),
            Cards(id: "4", isCorrect: false, symbol: "3", text: "三", setIndex: 0, fontSize: 0),
        ]
    }
    
    struct SecondCardSetForNumbers {
        let secondSet: [Cards] = [
            Cards(id: "1", isCorrect: true, symbol: "100", text: "百", setIndex: 1, fontSize: 0),
            Cards(id: "2", isCorrect: false, symbol: "1000", text: "千", setIndex: 1, fontSize: 0),
            Cards(id: "3", isCorrect: false, symbol: "10000", text: "万", setIndex: 1, fontSize: 0),
            Cards(id: "4", isCorrect: false, symbol: "1M", text: "億", setIndex: 1, fontSize: 0),
        ]
    }
    
    struct ThirdCardSetForNumbers {
        let thirdSet: [Cards] = [
            Cards(id: "1", isCorrect: true, symbol: "What", text: "何", setIndex: 2, fontSize: 0),
            Cards(id: "2", isCorrect: false, symbol: "How many", text: "いくつ", setIndex: 2, fontSize: 0),
            Cards(id: "3", isCorrect: false, symbol: "Few", text: "少ない", setIndex: 2, fontSize: 0),
            Cards(id: "4", isCorrect: false, symbol: "Many", text: "多い", setIndex: 2, fontSize: 0),
        ]
    }
    
    struct FourthCardSetForNumbers {
        let fourthSet: [Cards] = [
            Cards(id: "1", isCorrect: true, symbol: "10", text: "十", setIndex: 3, fontSize: 0),
            Cards(id: "2", isCorrect: false, symbol: "Hundred", text: "百", setIndex: 3, fontSize: 0),
            Cards(id: "3", isCorrect: false, symbol: "Thousand", text: "千", setIndex: 3, fontSize: 0),
            Cards(id: "4", isCorrect: false, symbol: "Ten Thousand", text: "万", setIndex: 3, fontSize: 0),
        ]
    }
    
    struct FifthCardSetForNumbers {
        let fifthSet: [Cards] = [
            Cards(id: "1", isCorrect: true, symbol: "100", text: "百", setIndex: 4, fontSize: 0),
            Cards(id: "2", isCorrect: false, symbol: "1000", text: "千", setIndex: 4, fontSize: 0),
            Cards(id: "3", isCorrect: false, symbol: "10000", text: "万", setIndex: 4, fontSize: 0),
            Cards(id: "4", isCorrect: false, symbol: "1M", text: "億", setIndex: 4, fontSize: 0),
        ]
    }
    
    struct SixthCardSetForNumbers {
        let sixthSet: [Cards] = [
            Cards(id: "1", isCorrect: true, symbol: "What", text: "何", setIndex: 5, fontSize: 0),
            Cards(id: "2", isCorrect: false, symbol: "How many", text: "いくつ", setIndex: 5, fontSize: 0),
            Cards(id: "3", isCorrect: false, symbol: "Few", text: "少ない", setIndex: 5, fontSize: 0),
            Cards(id: "4", isCorrect: false, symbol: "Many", text: "多い", setIndex: 5, fontSize: 0),
        ]
    }
    
    struct SeventhCardSetForNumbers {
        let seventhSet: [Cards] = [
            Cards(id: "1", isCorrect: true, symbol: "10", text: "十", setIndex: 6, fontSize: 0),
            Cards(id: "2", isCorrect: false, symbol: "Hundred", text: "百", setIndex: 6, fontSize: 0),
            Cards(id: "3", isCorrect: false, symbol: "Thousand", text: "千", setIndex: 6, fontSize: 0),
            Cards(id: "4", isCorrect: false, symbol: "Ten Thousand", text: "万", setIndex: 6, fontSize: 0),
        ]
    }
    
    struct EighthCardSetForNumbers {
        let eighthSet: [Cards] = [
            Cards(id: "1", isCorrect: true, symbol: "What", text: "何", setIndex: 7, fontSize: 0),
            Cards(id: "2", isCorrect: false, symbol: "How many", text: "いくつ", setIndex: 7, fontSize: 0),
            Cards(id: "3", isCorrect: false, symbol: "Few", text: "少ない", setIndex: 7, fontSize: 0),
            Cards(id: "4", isCorrect: false, symbol: "Many", text: "多い", setIndex: 7, fontSize: 0),
        ]
    }
    
    struct NinthCardSetForNumbers {
        let ninthSet: [Cards] = [
            Cards(id: "1", isCorrect: true, symbol: "10", text: "十", setIndex: 8, fontSize: 0),
            Cards(id: "2", isCorrect: false, symbol: "Hundred", text: "百", setIndex: 8, fontSize: 0),
            Cards(id: "3", isCorrect: false, symbol: "Thousand", text: "千", setIndex: 8, fontSize: 0),
            Cards(id: "4", isCorrect: false, symbol: "Ten Thousand", text: "万", setIndex: 8, fontSize: 0),
        ]
    }
    
    struct TenthCardSetForNumbers {
        let tenthSet: [Cards] = [
            Cards(id: "1", isCorrect: true, symbol: "10", text: "十", setIndex: 9, fontSize: 0),
            Cards(id: "2", isCorrect: false, symbol: "Hundred", text: "百", setIndex: 9, fontSize: 0),
            Cards(id: "3", isCorrect: false, symbol: "Thousand", text: "千", setIndex: 9, fontSize: 0),
            Cards(id: "4", isCorrect: false, symbol: "Ten Thousand", text: "万", setIndex: 9, fontSize: 0),
        ]
    }
    

