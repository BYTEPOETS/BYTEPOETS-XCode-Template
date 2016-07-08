import Foundation
import UIKit

struct AppTheme {
    
    static func apply(window: UIWindow?) {
        window?.tintColor = UIColor(named: .Primary)
        
        UIPageControl.appearanceWhenContainedInInstancesOfClasses([UIPageViewController.self]).currentPageIndicatorTintColor = UIColor(named: .Primary)
        UIPageControl.appearanceWhenContainedInInstancesOfClasses([UIPageViewController.self]).pageIndicatorTintColor = UIColor(named: .PrimaryLight)
    }
    
}
