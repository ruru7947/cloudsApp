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
    
    var apiGitHubComJsonsGloss:[ApiGithubComJsonGloss] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ApiGithubComJsonGloss.fetch(){
            dataTransfer in
            
            self.apiGitHubComJsonsGloss = dataTransfer
            print("fetch()完成後")
            print(self.apiGitHubComJsonsGloss)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

