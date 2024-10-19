//
//  CPPFromSwift.swift
//  SwiftCPPDemo
//
//  Created by Zakk Hoyt on 2024-10-19.
//

import Foundation

enum Tests {
    static func cppFromSwift() {
        let si = SomeSwiftClass(name: "Mr. Demo", age: 33)
        print("swift intance.name: \(si.name)")
        print("swift intance.age: \(si.age)")
        

#warning(
    #"""
    TODO: zakkhoyt - Calling functions mutates? 
    "Cannot use mutating member on immutable value: 'ppi' is a 'let' constant
    """#
)
        var cppi = SomeCPPClass("Mr. C++", 11, 0)

        print("c++ intance.age: \(cppi.getAge())")
        print("c++ intance.tally: \(cppi.getTally())")
        print("c++ intance.name: \(cppi.getName())")
        
        
        cppi.setAge(si.age)
#warning("TODO: zakkhoyt - Compiler error. Can't pass in si.name")
//        cppi.setName(si.name)
        cppi.setName("Mr. Demo")

        print("c++ intance.age: \(cppi.getAge())")
        print("c++ intance.tally: \(cppi.getTally())")
        print("c++ intance.name: \(cppi.getName())")

    }
}
