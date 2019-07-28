//
//  NewsDetailInteractor.swift
//  RSSReader
//
//  Created by Tatsuya Yamamoto on 2019/7/28.
//  Copyright © 2019 yamamoto.tatsuya. All rights reserved.
//

import Foundation
import RxSwift

protocol NewsDetailUsecase: class {
    var output: NewsListInteractorOutput! { get }
    func fetch()
}

final class NewsDetailInteractor: NewsDetailUsecase {
    var output: NewsListInteractorOutput!
    
    func fetch() {
        
    }
    
    
    
}
