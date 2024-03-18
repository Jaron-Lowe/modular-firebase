import FirebaseApi
import TelemetryApi
import Foundation

enum DIContainer {
    static var firebaseService: FirebaseService!
    static var telemetryService: TelemetryService!
    
    static func setUp() {
        firebaseService = FirebaseService()
        telemetryService = TelemetryService()
    }
}
