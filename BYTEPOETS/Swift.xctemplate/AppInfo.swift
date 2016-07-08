import Foundation

struct AppInfo {
    
    static func version() -> String {
        if let info = NSBundle.mainBundle().infoDictionary, version = info["CFBundleShortVersionString"], build = info["CFBundleVersion"] {
            return "\(version) (\(build))"
        } else {
            return ""
        }
    }
    
}
