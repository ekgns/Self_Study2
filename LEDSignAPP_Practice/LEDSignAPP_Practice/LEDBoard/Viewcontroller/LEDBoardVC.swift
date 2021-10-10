//
//  LEDBoardVC.swift
//  LEDSignAPP_Practice
//
//  Created by 다훈김 on 2021/10/10.
//

import UIKit

class LEDBoardVC: UIViewController, LEDBoardSettingDelegate {
   
    
    @IBOutlet weak var contentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentLabel.textColor = .yellow
    }
    
    // MARK: - 세그웨이로 구현해서 프리페어 구현
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingVC = segue.destination as? SettingVC {
            settingVC.delegate = self
            settingVC.ledText = self.contentLabel.text
            settingVC.textColor = self.contentLabel.textColor
            settingVC.backgroundColor = self.view.backgroundColor ?? .black
        }
    }
    
    func changedSetting(text: String?, textColor: UIColor, backgorundColor: UIColor) {
        if let text = text {
            self.contentLabel.text = text
        }
        self.contentLabel.textColor = textColor
        self.view.backgroundColor = backgorundColor
    }
    
}
