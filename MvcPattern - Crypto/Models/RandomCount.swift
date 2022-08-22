//
//  RandomCount.swift
//  MvcPattern - Crypto
//
//  Created by Владислав Лымарь on 22.08.2022.
//

import Foundation

class RandomCount{

    func getRandomCount(data: [Crypto]) -> Int{
    let randomCount = Int.random(in: 0 ..< data.count)
    return randomCount
}
}
