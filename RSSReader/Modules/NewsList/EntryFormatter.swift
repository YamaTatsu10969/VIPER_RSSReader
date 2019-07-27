//
//  EntryFormatter.swift
//  RSSReader
//
//  Created by Tatsuya Yamamoto on 2019/7/27.
//  Copyright © 2019 yamamoto.tatsuya. All rights reserved.
//

import Foundation

struct EntryFormatter {
    
//    private var categories: [String] = []
//    private var entries: [Entry] = []
//    private var entriesSeparatedByCategory: [(category: String, entries: [Entry])] = []
    
    func toCategorizedEntries(entries:[Entry]) -> [(category: String, entries: [Entry])] {
        
        var categories:[String] = []
        for entry in entries {
            categories.append(entry.category)
        }
        // カテゴリをユニークにしている
        categories = categories.unique
        
        var entriesSeparatedByCategory: [(category: String, entries: [Entry])] = []
        for category in categories {
            entriesSeparatedByCategory.append((category,getEntries(by: category, entries: entries)))
        }
        
        return entriesSeparatedByCategory
    }
    
//    mutating func setCategories() {
//        // 全てのカテゴリを入れている
//        for entry in self.entries {
//            categories.append(entry.category)
//        }
//        // カテゴリをユニークにしている
//        categories = categories.unique
//    }
//
//    mutating func setEntries() {
//        for category in categories {
//            entriesSeparatedByCategory.append((category,getEntries(by: category)))
//        }
//    }
//
    func getEntries(by category: String, entries: [Entry]) -> [Entry] {
        var entreisEqualCategory:[Entry] = []
        for entry in entries {
            if entry.category == category {
                entreisEqualCategory.append(entry)
            }
        }
        return entreisEqualCategory
    }
}
