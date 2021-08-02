//
//  TrendingVocabViewModel.swift
//  Vocaboo
//
//  Created by Gerson Janhuel on 02/08/21.
//

import Foundation
import CloudKit

class TrendingVocabViewModel: ObservableObject {
    // our array of trending vocabularies
    
    @Published var trendingVocabs: [TrendingVocab] = []
    
    // fetch from cloudkit here
    // ...
    func fetchTrendingVocabs() {
        // dummy data....
        trendingVocabs = [
            TrendingVocab(id: UUID(), word: "Trend 1"),
            TrendingVocab(id: UUID(), word: "Trend 2"),
            TrendingVocab(id: UUID(), word: "Trend 3")]
    }
}
