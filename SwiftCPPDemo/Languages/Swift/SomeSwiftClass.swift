//
//  SomeSwiftClass.swift
//  SwiftCPPDemo
//
//  Created by Zakk Hoyt on 2024-10-19.
//

import Foundation


//class SomeSwiftClass: SomeSwiftProtocol {
class SomeSwiftClass {
    init(
        name: String,
        nickname: String? = nil,
        age: UInt8
    ) {
        self.name = name
        self.nickname = nickname
        self.age = age
    }
    
    var name: String
    var nickname: String?
    var age: UInt8
    
    func greet(message: String) -> String {
        "Hi I'm \(name)"
    }

}
