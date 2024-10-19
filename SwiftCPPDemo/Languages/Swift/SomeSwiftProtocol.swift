//
//  SomeSwiftProtocol.swift
//  SwiftCPPDemo
//
//  Created by Zakk Hoyt on 2024-10-19.
//

import Foundation

protocol SomeSwiftProtocol {
    var name: String { get }
    var nickname: String? { get }
    var age: Int { get }

    func greet(message: String) -> String
    
//    func greet(message: String, completion: @escaping (String) -> ())

}
