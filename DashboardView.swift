import SwiftUI // main UI framework | origin: SwiftUI

struct DashboardView: View { // shows tenant dashboard | origin: Swift stdlib
    var body: some View { // describes UI | origin: SwiftUI
        VStack(spacing: 16) { // vertical layout | origin: SwiftUI
            Text("Tenant Dashboard") // screen title | origin: SwiftUI
                .font(.title) // large text | origin: SwiftUI
                .bold() // bold weight | origin: SwiftUI
                .foregroundColor(.blue) // themed color | origin: SwiftUI
                .accessibilityAddTraits(.isHeader) // header trait | origin: SwiftUI

            Text("My Properties") // section label | origin: SwiftUI

            NavigationLink("Add New Bond") { // navigate to inspection start | origin: SwiftUI
                StartInspectionView() // destination view | origin: SwiftUI
            }
            .buttonStyle(.borderedProminent) // primary button style | origin: SwiftUI
            .accessibilityLabel("Add new bond") // VoiceOver label | origin: SwiftUI

            Button("View Inspection Reports") { // placeholder for reports | origin: SwiftUI
                // TODO: implement reports screen | origin: Swift stdlib
            }
            .buttonStyle(.borderedProminent) // primary button style | origin: SwiftUI

            Button("Bond Receipts Wallet") { // placeholder for wallet | origin: SwiftUI
                // TODO: implement wallet screen | origin: Swift stdlib
            }
            .buttonStyle(.borderedProminent) // primary button style | origin: SwiftUI
        }
        .padding() // outer spacing | origin: SwiftUI
    }
}

#Preview { // preview provider | origin: SwiftUI
    DashboardView() // preview instance | origin: SwiftUI
}

