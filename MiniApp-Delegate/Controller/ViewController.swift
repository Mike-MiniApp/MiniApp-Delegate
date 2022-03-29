//
//  ViewController.swift
//  MiniApp-Delegate
//
//  Created by 近藤米功 on 2022/03/29.
//

import UIKit

class ViewController: UIViewController, UICalculateViewDelegate {
    
    @IBOutlet private weak var value1TextField: UITextField!
    @IBOutlet private weak var value2TextField: UITextField!
    @IBOutlet private weak var resultPrintTextView: UITextView!
    var calculateView = UICalculateView()
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateView.delegate = self
    }
    func calculateResult(value1: Int, value2: Int) -> Int {
        return value1-value2
    }
    
    func calcualteName() -> String {
        return "引き算"
    }
    
    func delegateHatudou() {
        print("delegate発動！！")
    }
    
    @IBAction func tappedCalculateResultlButton(_ sender: Any) {
        let inputValue1 = Int(value1TextField.text ?? "") ?? 0
        let inputValue2 = Int(value2TextField.text ?? "") ?? 0
        resultPrintTextView.text = calculateView.printer(value1: inputValue1, value2: inputValue2)
    }
}

