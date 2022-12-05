//
//  ContextTests.swift
//  LoggerTests
//
//  Created by Егор Бадмаев on 03.12.2022.
//

import XCTest
@testable import Logger

class ContextTests: XCTestCase {
    
    private let testFile = "test file"
    private let testFunction = "test function"
    private let testLine = 10
    
    var context: Context!
    
    override func tearDownWithError() throws {
        context = nil
    }
    
    /// Tests context's `description` computed property.
    func testContextDescription() throws {
        context = Context(file: testFile, function: testFunction, line: testLine)
        
        XCTAssertEqual(context.description, "In \(testFile): \(testFunction) method on line \(testLine)")
    }
}
