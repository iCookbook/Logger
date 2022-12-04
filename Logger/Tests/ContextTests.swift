//
//  ContextTests.swift
//  LoggerTests
//
//  Created by Егор Бадмаев on 03.12.2022.
//

import XCTest
@testable import Logger

class ContextTests: XCTestCase {
    
    var context: Context!
    
    override func setUpWithError() throws {
    }
    
    override func tearDownWithError() throws {
    }
    
    func testContextDescription() throws {
        context = Context(file: "test file", function: "test function", line: 10)
        
        XCTAssertEqual(context.description, "test file: test function: 10")
    }
}
