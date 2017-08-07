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
    
    var apiGitHubComJsons:[ApiGithubComJson] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ApiGithubComJson.fetch(){
            apiGitHubComJsons in
            
            self.apiGitHubComJsons = apiGitHubComJsons
            print("fetch()完成後")
            print(self.apiGitHubComJsons)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

