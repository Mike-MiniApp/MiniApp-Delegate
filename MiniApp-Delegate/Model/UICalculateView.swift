//
//  UICalculateView.swift
//  MiniApp-Delegate
//
//  Created by 近藤米功 on 2022/03/29.
//

import Foundation
protocol UICalculateViewDelegate{
    func calculateResult(value1: Int,value2: Int) -> Int
    func calcualteName() -> String
    func delegateHatudou()
}

class UICalculateView{
    var delegate: UICalculateViewDelegate?
    func printer(value1: Int,value2: Int) -> String{
        let calculateName = delegate?.calcualteName()
        let result = delegate?.calculateResult(value1: value1, value2: value2)
        if let calculateName = calculateName,let result = result{
            delegate?.delegateHatudou()
            return "\(value1)と\(value2)を\(calculateName)した結果は\(result)です"
        }else{
            return "value1とvalue2が入力されていません"
        }
    }
}
