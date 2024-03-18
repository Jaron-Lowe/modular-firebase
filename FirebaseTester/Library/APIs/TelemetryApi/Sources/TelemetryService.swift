import FirebaseAnalytics
import Foundation

public struct TelemetryService {
    public let logEvent: (_ name: String, _ params: [String: Any]?) -> Void
    public let logContentSelectedEvent: (_ contentName: String) -> Void
    
    public init() {
        logEvent = { name, params in
            Analytics.logEvent(name, parameters: params)
        }
        
        logContentSelectedEvent = { name in
            Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
                AnalyticsParameterItemID: "id-\(name)",
                AnalyticsParameterItemName: name,
                AnalyticsParameterContentType: "cont"
            ])
        }
    }
}
