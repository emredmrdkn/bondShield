import SwiftUI

struct StartInspectionView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Start Inspection")
                .font(.title)
                .bold()
                .foregroundColor(.blue)

            Text("Inspection - Bond #12345")

            Button("Add Photo/Video") {
                // Placeholder action
            }
            .buttonStyle(.borderedProminent)

            Button("Add Notes") {
                // Placeholder action
            }
            .buttonStyle(.borderedProminent)

            Button("Generate PDF Report") {
                // Placeholder action
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    StartInspectionView()
}
