//
//  SecretViewController.swift
//  SecondApp
//
//  Created by MacMini03 on 09/10/19.
//  Copyright © 2019 MacMini03. All rights reserved.
//

import UIKit

class SecretViewController: UIViewController {

    
    @IBOutlet weak var secretLabel: UITextField!
    
    var secretMessage : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secretLabel.text = secretMessage
    }
    
}
