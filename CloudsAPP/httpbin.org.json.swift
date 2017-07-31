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

enum DecodeJsonError: Error {
    case missing(String)
    case invalid(String, Any)
}

extension HttpbinOrgJson {
    init() {
        self.origin = "內部設定初始值"
        self.url = "內部設定初始值"
    }
    
    init? (dictionary: [String: Any]) throws {
        guard let origin = dictionary["origin"] as? String else {
            throw DecodeJsonError.missing("origin")
        }
        
        guard let url = dictionary["url"] as? String else{
            throw DecodeJsonError.missing("url")
        }
        
        self.origin = origin
        self.url = url
    }
    
}
