import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        List {
            Section {
                Button("Crash App") {
                    viewModel.crashAppButtonPressed()
                }
                Button("Send Custom Analytics Event") {
                    viewModel.sendCustomAnalyticsEventButtonPressed()
                }
                Button("Fun Content") {
                    viewModel.funContentButtonPressed()
                }
                Text("Events Logged: \(viewModel.analyticsEventsSent)")
            }
        }
    }
}
