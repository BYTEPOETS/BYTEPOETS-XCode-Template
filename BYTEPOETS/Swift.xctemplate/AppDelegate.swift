import UIKit
import XCGLogger

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        AppTheme.apply(window)
        setupLogging()
        return true
    }
    
    //MARK Logging
    private func setupLogging() {
        let cacheDirectory: NSURL = {
            let urls = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
            return urls[urls.endIndex - 1]
        }()
        
        let logPath = cacheDirectory.URLByAppendingPathComponent("___PROJECTNAME___.log")
        
        // create new logger - will remove existing content of logfile
        let logger = XCGLogger.defaultInstance()
        #if DEBUG
            logger.setup(.Verbose, showThreadName: true, showLogLevel: true, showFileNames: true, showLineNumbers: true, writeToFile: logPath)
        #else
            logger.setup(.Warning, showThreadName: true, showLogLevel: true, showFileNames: true, showLineNumbers: true, writeToFile: logPath)
            if let consoleLog = logger.logDestination(XCGLogger.Constants.baseConsoleLogDestinationIdentifier) as? XCGConsoleLogDestination {
                consoleLog.logQueue = XCGLogger.logQueue
            }
        #endif
    }

}
