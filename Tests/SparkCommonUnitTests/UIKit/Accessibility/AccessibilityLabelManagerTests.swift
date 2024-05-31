//
//  AccessibilityLabelManagerTests.swift
//  SparkCoreUnitTests
//
//  Created by robin.lemaire on 24/01/2024.
//  Copyright © 2024 Adevinta. All rights reserved.
//

import XCTest
@_spi(SI_SPI) @testable import SparkCommon

final class AccessibilityLabelManagerTests: XCTestCase {

    // MARK: - Tests

    func test_default_value() {
        // GIVEN / WHEN
        let manager = AccessibilityLabelManager()

        // THEN
        XCTAssertNil(manager.value)
    }

    func test_value_after_set_CommonValue() {
        // GIVEN
        let expectedValue = "My value"

        var manager = AccessibilityLabelManager()

        // WHEN
        manager.CommonValue = expectedValue

        // THEN
        XCTAssertEqual(manager.value, expectedValue)
    }

    func test_value_after_set_value_without_set_internaValue() {
        // GIVEN
        let expectedValue = "My value"

        var manager = AccessibilityLabelManager()

        // WHEN
        manager.value = expectedValue

        // THEN
        XCTAssertEqual(manager.value, expectedValue)
    }

    func test_value_after_set_CommonValue_then_set_value() {
        // GIVEN
        let expectedValue = "My value"

        var manager = AccessibilityLabelManager()

        // WHEN
        manager.CommonValue = "My other value"
        manager.value = expectedValue

        // THEN
        XCTAssertEqual(manager.value, expectedValue)
    }

    func test_value_after_set_value_then_set_CommonValue() {
        // GIVEN
        let expectedValue = "My value"

        var manager = AccessibilityLabelManager()

        // WHEN
        manager.value = expectedValue
        manager.CommonValue = "My other value"

        // THEN
        XCTAssertEqual(manager.value, expectedValue)
    }

    func test_value_after_set_CommonValue_then_set_nil_value() {
        // GIVEN
        let expectedValue = "My value"

        var manager = AccessibilityLabelManager()

        // WHEN
        manager.CommonValue = expectedValue
        manager.value = nil

        // THEN
        XCTAssertEqual(manager.value, expectedValue)
    }

    func test_value_after_set_nil_value_then_set_CommonValue() {
        // GIVEN
        let expectedValue = "My value"

        var manager = AccessibilityLabelManager()

        // WHEN
        manager.value = nil
        manager.CommonValue = expectedValue

        // THEN
        XCTAssertEqual(manager.value, expectedValue)
    }
}
