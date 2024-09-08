//
//  Animals1.swift
//  K-Learn
//
//  Created by berat kaya on 11.03.2024.
//

import Foundation

struct CardsForFamily: Identifiable {
    let id: String
    let isCorrect: Bool
    let symbol: String
    let text: String
    let setIndex: Int
    var fontSize: CGFloat
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

struct FirstCardSetForFamily {
    let firstCards: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "👩🏼‍🍼", text: "母", setIndex: 0, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "🧑🏼", text: "叔父", setIndex: 0, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "👩🏼", text: "叔母", setIndex: 0, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "🧑🏼‍🍼", text: "父", setIndex: 0, fontSize: 0)
    ]
}

struct SecondCardSetForFamily {
    let secondCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "🧒🏼", text: "息子", setIndex: 1, fontSize: 0),
        Cards(id: "2", isCorrect: true, symbol: "🧔🏼", text: "叔父", setIndex: 1, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "👩🏼‍🦳", text: "叔母", setIndex: 1, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "👧🏼", text: "娘", setIndex: 1, fontSize: 0)
    ]
}


struct ThirdCardSetForFamily {
    let thirdCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "義理の息子", text: "", setIndex: 2, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "義理の姉", text: "", setIndex: 2, fontSize: 0),
        Cards(id: "3", isCorrect: true, symbol: "義理の父", text: "", setIndex: 2, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "義理の母", text: "", setIndex: 2, fontSize: 0)
    ]
}

struct FourthCardSetForFamily {
    let fourthCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "👵🏻", text: "祖母", setIndex: 3, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "🧔🏼", text: "叔父", setIndex: 3, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "🧓🏼", text: "祖父", setIndex: 3, fontSize: 0),
        Cards(id: "4", isCorrect: true, symbol: "👩🏼", text: "叔母", setIndex: 3, fontSize: 0)
    ]
}

struct FifthCardSetForFamily {
    let fifthCards: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "孫", text: "", setIndex: 4, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "甥", text: "", setIndex: 4, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "いとこ", text: "", setIndex: 4, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "義理の息子", text: "", setIndex: 4, fontSize: 0)
    ]
}

struct SixthCardSetForFamily {
    let sixthCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "義理の娘", text: "", setIndex: 5, fontSize: 0),
        Cards(id: "2", isCorrect: true, symbol: "娘", text: "", setIndex: 5, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "兄", text: "", setIndex: 5, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "姉", text: "", setIndex: 5, fontSize: 0)
    ]
}


