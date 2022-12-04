//
//  Context.swift
//  Logger
//
//  Created by Егор Бадмаев on 04.12.2022.
//

import Foundation

struct Context {
    
    // MARK: - Private Properties
    
    /// The name of the file and module in which it appears.
    private let file: String
    /// The name of the declaration in which it appears.
    private let function: String
    /// The line number on which it appears.
    private let line: Int
    
    // MARK: - Init
    
    init(file: String = #fileID,
         function: String = #function,
         line: Int = #line) {
        self.file = file
        self.function = function
        self.line = line
    }
    
    /// Description of the log context.
    var description: String {
        return "In \(file): \(function) method on line \(line)"
    }
}
