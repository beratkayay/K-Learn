//
//  Animals0.swift
//  K-Learn
//
//  Created by berat kaya on 11.03.2024.
//

import Foundation

struct JapaneseFamilyModel: Identifiable {
    let id = UUID()
    let character: String
    let name: String
}

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




