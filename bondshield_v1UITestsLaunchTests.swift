//
//  bondshield_v1UITestsLaunchTests.swift
//  bondshield_v1UITests
//
//  Created by Emre Demirdöken on 21.08.2025.
//

import XCTest // testing framework | origin: XCTest

final class bondshield_v1UITestsLaunchTests: XCTestCase { // launch performance tests | origin: XCTest

    override class var runsForEachTargetApplicationUIConfiguration: Bool { // run for all configs | origin: XCTest
        true // always run | origin: Swift stdlib
    }

    override func setUpWithError() throws { // setup before each test | origin: XCTest
        continueAfterFailure = false // stop after failure | origin: XCTest
    }

    @MainActor
    func testLaunch() throws { // capture launch screenshot | origin: XCTest
        let app = XCUIApplication() // create app instance | origin: XCTest
        app.launch() // launch app | origin: XCTest

        let attachment = XCTAttachment(screenshot: app.screenshot()) // capture screenshot | origin: XCTest
        attachment.name = "Launch Screen" // name attachment | origin: Swift stdlib
        attachment.lifetime = .keepAlways // keep screenshot | origin: XCTest
        add(attachment) // store attachment | origin: XCTest
    }
}

