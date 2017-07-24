//
//  ViewController.swift
//  CloudsAPP
//
//  Created by mike on 2017/7/24.
//  Copyright © 2017年 mike. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print(response.request as Any)
            print(response.response as Any)
            print(response.data as Any)
            print(response.result)
            
            if let ARRAY = response.result.value {
                print("準備印出 result 中的資料")
                print(ARRAY)
            }
            
            if let JSON = response.result.value {
                if let dictionary = JSON as? [String: Any] {//將 JSON 物件，轉成 dictionary 的 key:value 的陣列
                    
                    if let value = dictionary["origin"] as? String {
                        print("解出 key 為 origin 的值")
                        print(value)
                    }
                    
                    if let value = dictionary["url"] as? String {
                        print("解出 key 為 url 的值")
                        print(value)
                    }
                    
                    //要當做 JSON 物件再解一次
                    if let headers_dictionary = dictionary["headers"] as? [String: Any] {
                        
                        if let value = headers_dictionary["Accept"] as? String {
                            print("解出 key 為 Accept 的值")
                            print(value)
                        }
                        
                        if let value = headers_dictionary["Accept-Encoding"] as? String {
                            print("解出 key 為 Accept-Encoding 的值")
                            print(value)
                        }
                        
                        if let value = headers_dictionary["Accept-Language"] as? String {
                            print("解出 key 為 Accept-Language 的值")
                            print(value)
                        }
                        
                        if let value = headers_dictionary["Connection"] as? String {
                            print("解出 key 為 Connection 的值")
                            print(value)
                        }
                        
                        if let value = headers_dictionary["Host"] as? String {
                            print("解出 key 為 Host 的值")
                            print(value)
                        }
                        
                        if let value = headers_dictionary["User-Agent"] as? String {
                            print("解出 key 為 User-Agent 的值")
                            print(value)
                        }
                    }
                    
                    //不用解了，因為沒東西
                    if let value = dictionary["args"] as? String {//解不出來，因為不是 String
                        print("解出 key 為 args 的值")
                        print(value)
                    }
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

