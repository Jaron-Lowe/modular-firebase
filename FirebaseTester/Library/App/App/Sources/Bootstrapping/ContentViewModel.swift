import FirebaseApi
import Foundation
import TelemetryApi

final class ContentViewModel: ObservableObject {
    // MARK: Properties
    
    let firebaseService: FirebaseService
    let telemetryService: TelemetryService
    
    // MARK: State
    
    @Published var analyticsEventsSent = 0
    
    // MARK: Init
    
    init(
        firebaseService: FirebaseService = DIContainer.firebaseService,
        telemetryService: TelemetryService = DIContainer.telemetryService
    ) {
        self.firebaseService = firebaseService
        self.telemetryService = telemetryService
    }
    
    // MARK: Actions
    
    func crashAppButtonPressed() {
        firebaseService.crashApp()
    }
    
    func sendCustomAnalyticsEventButtonPressed() {
        telemetryService.logEvent("jaron_test", [
            "send_count": analyticsEventsSent,
            "tag": Int.random(in: 1...100)
        ])
        analyticsEventsSent += 1
    }
    
    func funContentButtonPressed() {
        telemetryService.logContentSelectedEvent("Fun Content")
        analyticsEventsSent += 1
    }
}
