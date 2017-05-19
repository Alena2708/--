import UIKit
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
     GMSServices.provideAPIKey("AIzaSyBwpLHgs9hr6dH2vRh6_smgFn6t7zsG-os")// ключ можно получить на сайте
    //  Google Apls
    
    
    // Override point for customization after application launch.
    let splitViewController = window!.rootViewController as! UISplitViewController
    let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
    navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
    splitViewController.delegate = self
    
    UISearchBar.appearance().barTintColor = UIColor.candyGreen()
    UISearchBar.appearance().tintColor = UIColor.white
    UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).tintColor = UIColor.candyGreen()
    return true
  }
  
  // MARK: - Split view
  func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController:UIViewController, onto primaryViewController:UIViewController) -> Bool {
    guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
    guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else { return false }
    if topAsDetailController.detailCity == nil {
      // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
      return true
    }
    return false
  }
    
  
}

extension UIColor {
    static func candyGreen() -> UIColor {
    
    
     // return UIColor(red:0.29, green:0.89, blue:1.00, alpha:1.0)
        return UIColor(red:0.38, green:0.59, blue:0.95, alpha:1.0)
        
}
}

