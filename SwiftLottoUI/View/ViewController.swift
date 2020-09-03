//
//  ViewController.swift
//  SwiftLottoUI
//
//  Created by Angelos Staboulis on 3/9/20.
//  Copyright © 2020 Angelos Staboulis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numbers=[Int]()
    var count:Int?=0
    @IBOutlet var buttons:[UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        numbers = SwiftLottoHelper.shared.generateNumbers()
        setupView()
        // Do any additional setup after loading the view.
    }
  
  
    
}

extension ViewController{
    func setupView(){
        for button in 0..<buttons.count{
            if button < 6{
                let elementString = String(numbers[button])
                let element = numbers[button]
                if buttons[element-1].currentTitle!.contains(elementString){
                    buttons[element].setTitleColor(UIColor.orange, for: .normal)
                }
            }
        }
    }
}
