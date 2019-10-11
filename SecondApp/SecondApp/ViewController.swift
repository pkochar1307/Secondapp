//
//  ViewController.swift
//  SecondApp
//
//  Created by MacMini03 on 09/10/19.
//  Copyright © 2019 MacMini03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messagrTextField1: UITextField!
    
    @IBAction func onButtonTap(_ sender: Any) {
        
        let message = messagrTextField1.text?.addingPercentEncoding(withAllowedCharacters: . urlQueryAllowed)
    
        
        let application  = UIApplication.shared
        
        let primaryAppPath = "primary://secretPage1?message=\(message ?? "")"
        
        let appUrl = URL (string: primaryAppPath)!
        
        let websiteUrl = URL(string: "https:kiloloco.com")!
        
        if application.canOpenURL(appUrl) {
            
            application.open(appUrl, options : [:], completionHandler: nil)
            
            
        }else {
            
            application.open(websiteUrl)
        }
    }
    
    
    

}


