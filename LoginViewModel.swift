import SwiftUI // provides UI-related types like ObservableObject | origin: SwiftUI

final class LoginViewModel: ObservableObject { // view model managing login state | origin: Swift stdlib
    @Published var email: String = "" // user-entered email | origin: SwiftUI
    @Published var password: String = "" // user-entered password | origin: SwiftUI

    func login() async -> Bool { // performs a fake async login request | origin: Swift stdlib
        guard !email.isEmpty, !password.isEmpty else { return false } // validate inputs are non-empty | origin: Swift stdlib
        try? await Task.sleep(for: .seconds(1)) // simulate network delay | origin: Swift stdlib
        return true // indicate success | origin: Swift stdlib
    }
}

