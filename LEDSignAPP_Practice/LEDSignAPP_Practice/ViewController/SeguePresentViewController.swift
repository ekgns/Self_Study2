//
//  SeguePresentViewController.swift
//  LEDSignAPP_Practice
//
//  Created by 다훈김 on 2021/09/07.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
