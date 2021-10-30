//
//  RoundButton.swift
//  Calculator_Exam
//
//  Created by 다훈김 on 2021/10/30.
//

import UIKit

// UI버튼을 상속하여 RoundButton 을 생성
// UIButton의 속성들을 그대로 사용 가능하며 사용자가 원하는 속성들을 정의해서 사용 가능하다

@IBDesignable // 변경된 설정값을 스토리보드에서 실시간으로 확인할 수 있게 해줌  (남용하게 되면 빌드하는데 오래 걸려서 스토리보드가 버벅일 수 있음)
class RoundButton: UIButton {
//    @IBInspectable 스토리보드에서 isRound의 값을 변경할 수 있게 한다
    @IBInspectable var isRound:Bool = false {
        didSet {
            if isRound == true {
                self.layer.cornerRadius = self.frame.height/2 // 버튼의 높이를 나누기 2해서 원만듬
            }
        }
    }
   

}
