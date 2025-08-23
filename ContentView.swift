//
//  ContentView.swift
//  bondshield_v1
//
//  Created by Emre Demirdöken on 21.08.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Tenant Login / Sign up")
                    .font(.title)
                    .bold()
                    .foregroundColor(.blue)

                Text("Welcome to BondShield")

                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)

                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)

                NavigationLink("Login") {
                    DashboardView()
                }
                .buttonStyle(.borderedProminent)

                Button("Sign up") {
                    // Placeholder action
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
