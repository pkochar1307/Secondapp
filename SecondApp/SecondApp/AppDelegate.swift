//
//  AppDelegate.swift
//  SecondApp
//
//  Created by MacMini03 on 09/10/19.
//  Copyright © 2019 MacMini03. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        print (url)
        
        let urlComponents = URLComponents (url: url, resolvingAgainstBaseURL: true)
        
        let host = urlComponents?.host ?? ""
        
        print(host)
        
        if host == "secretPage" {
            
            let sb = UIStoryboard(name: "Main" , bundle: .main)
            
            let secretVC = sb.instantiateViewController(withIdentifier: "SecretVC") as! SecretViewController
            
            secretVC.secretMessage = urlComponents?.queryItems?.first?.value
            
            window?.rootViewController = secretVC
        }
        
        
        
        return true
    }

    
}

