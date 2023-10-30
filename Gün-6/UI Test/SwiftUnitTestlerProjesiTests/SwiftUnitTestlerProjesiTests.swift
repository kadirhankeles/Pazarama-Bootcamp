//
//  SwiftUnitTestlerProjesiTests.swift
//  SwiftUnitTestlerProjesiTests
//
//  Created by Kadirhan Keles on 28.10.2023.
//

import XCTest
@testable import SwiftUnitTestlerProjesi

final class SwiftUnitTestlerProjesiTests: XCTestCase {
    
    let math = MathematicFunctions()

    func testAddFunction() throws {
        let result = math.addIntegers(x: 10, y: 5)
        XCTAssertEqual(result, 15)
    }
    
    func testMultiplyFunction() throws {
        let result = math.multiplyIntegers(x: 10, y: 5)
        XCTAssertEqual(result, 50)
    }
    
    func testDeductFunction() throws {
        let result = math.decutIntegers(x: 10, y: 5)
        XCTAssertEqual(result, 5)
    }

}
