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
    
    /// Tests logger's output for some `testMessage` without context.
    func testWithoutContext() throws {
        let handledLog = Logger.createLog(logType: .error, message: testMessage, shouldLogContext: false)
        
        XCTAssertEqual(handledLog,
            """
            \(Logger.LogType.error.rawValue): \(Date())
            "\(testMessage)"
            """
        )
    }
    
    /// Tests logger's output for some `testMessage` with context.
    func testWithContext() throws {
        let testFile = "test file"
        let testFunction = "test function"
        let testLine = 10
        let testContext = Context(file: testFile, function: testFunction, line: testLine)
        
        let handledLog = Logger.createLog(logType: .info, message: testMessage, shouldLogContext: true,
                                          context: testContext)
        
        XCTAssertEqual(handledLog,
            """
            \(Logger.LogType.info.rawValue): \(Date())
            "\(testMessage)"
            \(testContext.description)
            """
        )
    }
}
