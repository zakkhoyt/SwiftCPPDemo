//
//  SwiftCPPDemoApp.swift
//  SwiftCPPDemo
//
//  Created by Zakk Hoyt on 2024-10-19.
//

import SwiftUI

@main
struct SwiftCPPDemoApp: App {
    init () {
        Tests.cppFromSwift()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
