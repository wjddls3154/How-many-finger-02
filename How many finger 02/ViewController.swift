//
//  ViewController.swift
//  How many finger 02
//
//  Created by D7702_10 on 2018. 3. 26..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //delegate 연결
        input.delegate=self
        input.clearButtonMode = UITextFieldViewMode.always
        input.placeholder = "입력하세요!";
        
    }

    @IBAction func guess(_ sender: Any) {
        //랜덤 숫자 생성
        let number = arc4random() % 6
        print(number)
        let numberString = String(number)
        if input.text == numberString {
            resultLabel.text = "빙고!!!"
        }else {
            resultLabel.text = "실패!!! Try again !!! \n 숨겨진 숫자는 현재 \(number)"
        }
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //input.resignFirstResponder()
        view.endEditing(true)
        input.backgroundColor = UIColor.blue
        
    }
    
    func  textFieldShouldReturn(_ textField: UITextField) ->
        Bool {
           
            print("I pressed return key")
            //버튼을 실행시키면 키보드를내림
       input.resignFirstResponder()
            view.backgroundColor = UIColor.yellow
            return true
    }
    
}

