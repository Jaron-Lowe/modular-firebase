import FirebaseAnalytics
import FirebaseCore
import FirebaseCrashlytics
import Foundation

public struct FirebaseService {
    public let crashApp: () -> Void
    
    public init() {
        FirebaseApp.configure()
        
        crashApp = {
            fatalError("Test Crash from Jaron")
        }
    }
}
