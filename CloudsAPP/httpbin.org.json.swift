//
//  httpbin.org.json.swift
//  CloudsAPP
//
//  Created by ruru on 2017/7/31.
//  Copyright © 2017年 mike. All rights reserved.
//

import Foundation

struct HttpbinOrgJson {
    let origin: String
    let url: String
    
}

extension HttpbinOrgJson {
    init() {
        self.origin = "內部設定初始值"
        self.url = "內部設定初始值"
    }
    
    init(dictionary: [String: Any]) throws {
        guard let origin = dictionary["origin"] as? String,
            let url = dictionary["url"] as? String else {
//                return
                throw 0 as! Error
        }
        
        self.origin = origin
        self.url = url
    }
    
}
