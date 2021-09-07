//
//  CodePushViewController.swift
//  LEDSignAPP_Practice
//
//  Created by 다훈김 on 2021/09/07.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()   
    }
    
    @IBAction func tapBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
