//
//  SequenceConverterTests.swift
//  SequenceConverterTests
//
//  Created by Andrey Volobuev on 30/05/2017.
//  Copyright © 2017 Andrey Volobuev. All rights reserved.
//

import XCTest
@testable import SequenceConverter

class SequenceConverterTests: XCTestCase {
    
    // Comma space tests
    
    func testFormatterBothItemsNotNil() {
        let formatted = SequenceConverter.commaSpaceBeforeMiddleFormat("1", "2")
        let expected = ", 1, 2"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when all items are not nil")
    }
    
    func testFormatterFirstItemIsNil() {
        let formatted = SequenceConverter.commaSpaceBeforeMiddleFormat(nil, "2")
        let expected = ", 2"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when first item is nil")
    }
    
    func testFormatterSecodItemIsNil() {
        let formatted = SequenceConverter.commaSpaceBeforeMiddleFormat("1", nil)
        let expected = ", 1"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when second item is nil")
    }
    
    func testFormatterBothItemsAreNil() {
        let formatted = SequenceConverter.commaSpaceBeforeMiddleFormat(nil, nil)
        let expected = ""
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when both item are nil")
    }
    
    func testFormatterTreeItems() {
        let formatted = SequenceConverter.commaSpaceBeforeMiddleFormat("1", "2", "3")
        let expected = ", 1, 2, 3"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when three item is not nil")
    }
    
    // Space tests
    
    func testSpaceFormatterBothItemsNotNil() {
        let formatted = SequenceConverter.middleSpaceFormat("1", "2")
        let expected = "1 2"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when all items are not nil")
    }
    
    func testSpacFormatterFirstItemIsNil() {
        let formatted = SequenceConverter.middleSpaceFormat(nil, "2")
        let expected = "2"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when first item is nil")
    }
    
    func testSpacFormatterSecodItemIsNil() {
        let formatted = SequenceConverter.middleSpaceFormat("1", nil)
        let expected = "1"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when second item is nil")
    }
    
    func testSpacFormatterBothItemsAreNil() {
        let formatted = SequenceConverter.middleSpaceFormat(nil, nil)
        let expected = ""
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when both item are nil")
    }
    
    func testSpacFormatterTreeItems() {
        let formatted = SequenceConverter.middleSpaceFormat("1", "2", "3")
        let expected = "1 2 3"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when three item is not nil")
    }
    
    // Separator tests
    
    func testThreeSeparartor() {
        let arr: [CustomStringConvertible?] = ["1", "2", "3"]
        let formatted = arr.toStringWithSeparators(before: "->", between: "|", after: "->")
        let expected = "->1|2|3->"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when three item is not nil")
    }
    
    func testOneSeparartor() {
        let formatted = ["1"].toStringWithSeparators(before: "->", between: "|", after: "->")
        let expected = "->1->"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when one item")
    }
    
    func testTwoSeparartor() {
        let formatted = ["1", "2"].toStringWithSeparators(before: "->", between: "|", after: "->")
        let expected = "->1|2->"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when two items")
    }
    
    func testEmptySeparartor() {
        let arr: [CustomStringConvertible?] = [String]()
        let formatted = arr.toStringWithSeparators(before: "->", between: "|", after: "->")
        let expected = ""
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when empty")
    }
    
    func testNilSeparartor() {
        let arr: [CustomStringConvertible?] = [nil]
        let formatted = arr.toStringWithSeparators(before: "->", between: "|", after: "->")
        let expected = ""
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when nil")
    }
    
    func testMultipleEmptySeparartor() {
        let formatted = ["1", "", "", "", "4", "5"].toStringWithSeparators(before: "<-", between: "|", after: "->")
        let expected = "<-1|4|5->"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when multiple are empty")
    }
    
    func testMultipleNilSeparartor() {
        let formatted = ["1", nil, nil, nil, "4", "5"].toStringWithSeparators(before: "->", between: "|", after: "->")
        let expected = "->1|4|5->"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when multiple are nil")
    }
    
    func testMultipleEmptyAndNilSeparartor() {
        let formatted = [nil, "1", "", nil, "", "4", nil, ""].toStringWithSeparators(before: "->", between: "|", after: "->")
        let expected = "->1|4->"
        XCTAssert(formatted == expected, "Expected result is \(expected) not \(formatted) when multiple are empty and nil")
    }
}
