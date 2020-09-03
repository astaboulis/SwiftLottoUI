//
//  SwiftLottoHelper.swift
//  SwiftLottoUI
//
//  Created by Angelos Staboulis on 3/9/20.
//  Copyright © 2020 Angelos Staboulis. All rights reserved.
//

import Foundation
final class SwiftLottoHelper {
    static let shared = SwiftLottoHelper()
    private init(){}
    func generateNumbers()->Array<Int>{
        var numbers = [Int]()
        for _ in 0..<6{
            let element = Int.random(in: 1..<49)
            numbers.append(element)
        }
        return Array(Set(numbers))
    }
}
