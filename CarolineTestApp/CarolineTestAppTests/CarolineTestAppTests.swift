//
//  CarolineTestAppTests.swift
//  CarolineTestAppTests
//
//  Created by Caroline Steffen on 9/19/16.
//  Copyright © 2016 Caroline Steffen. All rights reserved.
//

import XCTest
@testable import CarolineTestApp

class CarolineTestAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testFindWordsWithLetter() {
        let vc = ViewController.init(nibName: "Main", bundle: nil)
        let testChar = Character.init("a")
        let testDict = ["apple": "32", "xylophone": "1", "animals": "24"]
        
        let testResult = vc.findWordsWithLetter(char: testChar, dict: testDict)
        XCTAssert(testResult == ["animals", "apple"])
    }
    
}
