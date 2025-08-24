//
//  bondshield_v1UITests.swift
//  bondshield_v1UITests
//
//  Created by Emre Demirdöken on 21.08.2025.
//

import XCTest // UI testing framework | origin: XCTest

final class bondshield_v1UITests: XCTestCase { // UI test suite | origin: XCTest

    override func setUpWithError() throws { // setup before each test | origin: XCTest
        continueAfterFailure = false // stop after failure | origin: XCTest
    }

    override func tearDownWithError() throws { // teardown after each test | origin: XCTest
        // no-op | origin: Swift stdlib
    }

    @MainActor
    func testNavigationToInspection() throws { // ensures navigation works | origin: XCTest
        let app = XCUIApplication() // launchable app | origin: XCTest
        app.launch() // start app | origin: XCTest

        app.buttons["Login"].tap() // tap login button | origin: XCTest
        app.buttons["Add New Bond"].tap() // tap add bond | origin: XCTest
        XCTAssertTrue(app.staticTexts["Start Inspection"].exists) // verify destination | origin: XCTest
    }
}

