//
//  NewsDetailRouter.swift
//  RSSReader
//
//  Created by Tatsuya Yamamoto on 2019/7/28.
//  Copyright © 2019 yamamoto.tatsuya. All rights reserved.
//

import Foundation

protocol NewsDetailWireframe: class {
    
}

final class NewsDetailRouter: NewsDetailWireframe {
    
    func assembleModule(entry: Entry) -> UIViewController? {
        let view = NewsDetailViewController.instantiate()
        let interactor = NewsDetailInteractor()
        let router = NewsDetailPresenter()
        
        let presenter = NewsDetailPresenter()
    }
    
}
