//
//  SettingVC.swift
//  LEDSignAPP_Practice
//
//  Created by 다훈김 on 2021/10/10.
//

import UIKit

// MARK: - 프로토콜 만들기
protocol LEDBoardSettingDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgorundColor: UIColor)
}

class SettingVC: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yelloButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    
    
    // MARK: - 글자색 버튼 변경 액션
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == self.yelloButton {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        } else if sender == self.purpleButton {
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        } else {
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    // MARK: - 배경색 버튼 변경 액션
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == self.blackButton {
            self.changeBackgorundColor(color: .black)
            self.backgroundColor = .black
        } else if sender == self.blueButton {
            self.changeBackgorundColor(color: .blue)
            self.backgroundColor = .blue
        } else {
            self.changeBackgorundColor(color: .orange)
            self.backgroundColor = .orange
        }
    }
    
    // MARK: - 설정 저장 해서 첫 화면 배경과 텍스트 컬러 변경 하는 액션
    @IBAction func tapSaveButtton(_ sender: UIButton) {
        self.delegate?.changedSetting(text: self.textField.text, textColor: self.textColor, backgorundColor: self.backgroundColor)
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: - 선택 된 글자색 알파 값 변경
    private func changeTextColor(color: UIColor) {
        self.yelloButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
    }
    
    // MARK: - 선택 된 배경색 알파 값 변경
    private func changeBackgorundColor(color: UIColor) {
        self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
        self.blueButton.alpha = color == UIColor.blue ? 1 : 0.2
        self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.2
    }
    
    private func configureView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
        }
        self.changeTextColor(color: self.textColor)
        self.changeBackgorundColor(color: self.backgroundColor)
    }
}
