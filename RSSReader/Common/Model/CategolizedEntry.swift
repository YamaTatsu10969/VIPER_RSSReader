//
//  CategolizedEntry.swift
//  RSSReader
//
//  Created by yamamoto.tatsuya on 2019/07/26.
//  Copyright © 2019 yamamoto.tatsuya. All rights reserved.
//

import Foundation

struct CategolizedEntry {
    let categolizedEntry: [(String, [Entry])]
    init(_ categolizedEntry: KeyValuePairs<String, [Entry]>) {
        self.categolizedEntry = Array(categolizedEntry)
    }
}
