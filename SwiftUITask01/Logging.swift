//
//  Logging.swift
//  SwiftUITask01
//
//  Created by 高田朋輝 on 2022/10/01.
//

import Foundation

enum Logging {
    static func debug(filePath: String = #filePath, function: String = #function, line: Int = #line, _ message: String) {
        let threadType = Thread.current.isMainThread ? "MainThread" : "SubThread"
        let threadNumber = Thread.current
        #if DEBUG
            print("\n\(Date())")
            print("[\(filePath): \(function): Line \(line)]")
            print("\(threadType): \(threadNumber)")
            print("\(message)\n")
        #endif
    }
}
