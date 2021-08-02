//
//  TrendingVocab.swift
//  Vocaboo
//
//  Created by Gerson Janhuel on 02/08/21.
//

import Foundation

// our model of CloudKit record data structure
struct TrendingVocab: Identifiable {
    var id = UUID()
    var word: String = ""
}
