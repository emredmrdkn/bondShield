//
//  ContentView.swift
//  bondshield_v1
//
//  Created by Emre Demirdöken on 21.08.2025.
//

import SwiftUI // main UI framework | origin: SwiftUI

struct ContentView: View { // root login view | origin: Swift stdlib
    @StateObject private var viewModel = LoginViewModel() // holds login logic | origin: SwiftUI
    @State private var navigate = false // controls navigation after login | origin: Swift stdlib

    var body: some View { // describes UI | origin: SwiftUI
        NavigationStack { // manages navigation path | origin: SwiftUI
            VStack(spacing: 16) { // vertical layout with spacing | origin: SwiftUI
                Text("Tenant Login / Sign up") // screen title | origin: SwiftUI
                    .font(.title) // large text style | origin: SwiftUI
                    .bold() // bold weight | origin: SwiftUI
                    .foregroundColor(.blue) // themed color | origin: SwiftUI
                    .accessibilityAddTraits(.isHeader) // marks as header for VoiceOver | origin: SwiftUI

                Text("Welcome to BondShield") // subtitle text | origin: SwiftUI

                TextField("Email", text: $viewModel.email) // email entry | origin: SwiftUI
                    .textFieldStyle(.roundedBorder) // standard rounded style | origin: SwiftUI
                    .keyboardType(.emailAddress) // show email keyboard | origin: SwiftUI
                    .accessibilityLabel("Email address") // VoiceOver label | origin: SwiftUI

                SecureField("Password", text: $viewModel.password) // password entry | origin: SwiftUI
                    .textFieldStyle(.roundedBorder) // standard rounded style | origin: SwiftUI
                    .accessibilityLabel("Password") // VoiceOver label | origin: SwiftUI

                Button("Login") { // triggers login action | origin: SwiftUI
                    Task { // start async context | origin: Swift stdlib
                        if await viewModel.login() { // attempt login | origin: Swift stdlib
                            navigate = true // navigate on success | origin: Swift stdlib
                        }
                    }
                }
                .buttonStyle(.borderedProminent) // primary button style | origin: SwiftUI

                NavigationLink("", destination: DashboardView(), isActive: $navigate) // hidden link to dashboard | origin: SwiftUI
                    .accessibilityHidden(true) // hide from accessibility | origin: SwiftUI

                Button("Sign up") { // placeholder sign-up action | origin: SwiftUI
                    // TODO: implement sign-up flow | origin: Swift stdlib
                }
                .buttonStyle(.borderedProminent) // primary button style | origin: SwiftUI
            }
            .padding() // add outer spacing | origin: SwiftUI
        }
    }
}

#Preview { // preview provider for Xcode canvas | origin: SwiftUI
    ContentView() // preview instance | origin: SwiftUI
}

