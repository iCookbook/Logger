//
//  ContextTests.swift
//  LoggerTests
//
//  Created by Егор Бадмаев on 03.12.2022.
//

import XCTest
@testable import Logger

class LoggerTests: XCTestCase {
    
    private let testMessage = "test message"
    
    func testWithoutContext() throws {
        let handledLog = Logger.createLog(logType: .error, message: testMessage, shouldLogContext: false)
        
        XCTAssertEqual(handledLog,
            """
            \(Logger.LogType.error.rawValue): "\(testMessage)"
            """
        )
    }
    
    func testWithContext() throws {
        let testFile = "test file"
        let testFunction = "test function"
        let testLine = 10
        
        let handledLog = Logger.createLog(logType: .info, message: testMessage, shouldLogContext: true,
                                          context: Context(file: testFile, function: testFunction, line: testLine))
        
        XCTAssertEqual(handledLog,
            """
            \(Logger.LogType.info.rawValue): "\(testMessage)"
            In \(testFile): \(testFunction) method on line \(testLine)
            """
        )
    }
}
