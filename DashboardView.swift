import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Tenant Dashboard")
                .font(.title)
                .bold()
                .foregroundColor(.blue)

            Text("My Properties")

            NavigationLink("Add New Bond") {
                StartInspectionView()
            }
            .buttonStyle(.borderedProminent)

            Button("View Inspection Reports") {
                // Placeholder action
            }
            .buttonStyle(.borderedProminent)

            Button("Bond Receipts Wallet") {
                // Placeholder action
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    DashboardView()
}
