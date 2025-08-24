import SwiftUI // main UI framework | origin: SwiftUI

struct StartInspectionView: View { // allows adding inspection data | origin: Swift stdlib
    var body: some View { // describes UI | origin: SwiftUI
        VStack(spacing: 16) { // vertical layout | origin: SwiftUI
            Text("Start Inspection") // screen title | origin: SwiftUI
                .font(.title) // large text | origin: SwiftUI
                .bold() // bold weight | origin: SwiftUI
                .foregroundColor(.blue) // themed color | origin: SwiftUI
                .accessibilityAddTraits(.isHeader) // header trait | origin: SwiftUI

            Text("Inspection - Bond #12345") // placeholder inspection label | origin: SwiftUI

            Button("Add Photo/Video") { // placeholder media action | origin: SwiftUI
                // TODO: implement media capture | origin: Swift stdlib
            }
            .buttonStyle(.borderedProminent) // primary button style | origin: SwiftUI

            Button("Add Notes") { // placeholder notes action | origin: SwiftUI
                // TODO: implement note entry | origin: Swift stdlib
            }
            .buttonStyle(.borderedProminent) // primary button style | origin: SwiftUI

            Button("Generate PDF Report") { // placeholder PDF action | origin: SwiftUI
                // TODO: implement PDF generation | origin: Swift stdlib
            }
            .buttonStyle(.borderedProminent) // primary button style | origin: SwiftUI
        }
        .padding() // outer spacing | origin: SwiftUI
    }
}

#Preview { // preview provider | origin: SwiftUI
    StartInspectionView() // preview instance | origin: SwiftUI
}

