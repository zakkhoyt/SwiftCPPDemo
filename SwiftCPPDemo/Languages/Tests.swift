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
        
        // Must be var because Swift imports c++ classes as value types by default,
        // and seems to be mutated even when calling 'getter' functions (below).
        // This can be overriden if desired.
        // [See here](https://www.swift.org/documentation/cxx-interop/#mapping-c-types-to-swift-reference-types)
        var cppi = SomeCPPClass("Mr. C++", 11, 0)
        
        func printCppi() {
            print("c++ intance.age: \(cppi.getAge())")
            print("c++ intance.tally: \(cppi.getTally())")
            print("c++ intance.name: \(cppi.getName())")
        }
        printCppi()
        
        cppi.setAge(si.age)
#warning("TODO: zakkhoyt - Compiler error. Can't pass in si.name")
//        cppi.setName(si.name)
        cppi.setName("Mr. Demo")
        
        printCppi()
    }
}
