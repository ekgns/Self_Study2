//
//  SeguePushViewController.swift
//  LEDSignAPP_Practice
//
//  Created by 다훈김 on 2021/09/07.
//

import UIKit

class SeguePushViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
        //  navigation 첫 번째 화면으로 감
//        self.navigationController?.popToRootViewController(animated: true)
        
    }
}
