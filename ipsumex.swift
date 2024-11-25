import SwiftUI

struct ContentView: View {
    @State private var currentDate = Date()

    var body: some View {
        VStack {
            Text("Full Date: \(currentDate, formatter: fullDateFormatter)")
            Text("Formatted Date: \(currentDate, formatter: shortDateFormatter)")
        }
        .padding()
    }

    // Full date formatter
    private var fullDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        return formatter
    }

    // Short date formatter, removing certain units (e.g., day of the week)
    private var shortDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"  // Customize as needed
        return formatter
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
