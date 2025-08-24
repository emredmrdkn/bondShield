import XCTest // provides testing utilities | origin: XCTest
@testable import bondshield_v1 // allow access to app types | origin: Swift stdlib

final class LoginViewModelTests: XCTestCase { // tests for LoginViewModel | origin: XCTest
    func testLoginSuccess() async { // verifies successful login with valid data | origin: XCTest
        let vm = LoginViewModel() // create view model | origin: Swift stdlib
        vm.email = "user@example.com" // set valid email | origin: Swift stdlib
        vm.password = "secret" // set valid password | origin: Swift stdlib
        let result = await vm.login() // perform login | origin: Swift stdlib
        XCTAssertTrue(result) // expect success | origin: XCTest
    }

    func testLoginFailure() async { // verifies failure when fields empty | origin: XCTest
        let vm = LoginViewModel() // create view model | origin: Swift stdlib
        vm.email = "" // leave email empty | origin: Swift stdlib
        vm.password = "" // leave password empty | origin: Swift stdlib
        let result = await vm.login() // perform login | origin: Swift stdlib
        XCTAssertFalse(result) // expect failure | origin: XCTest
    }
}

