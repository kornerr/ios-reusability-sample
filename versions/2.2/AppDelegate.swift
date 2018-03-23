
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
    ) -> Bool {
        // AppDelegate+SCoordinator Start
        // Create window.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        // Create coordinator.
        self.setupSCoordinator()
        // Display window.
        self.window!.backgroundColor = UIColor.white
        self.window!.makeKeyAndVisible()
        
        // AppDelegate+SCoordinator End
        return true
    }

    // AppDelegate+SCoordinator Start
    private var scoordinator: SCoordinator!
    
    private func setupSCoordinator() {
        self.scoordinator = SCoordinator()
        self.window!.rootViewController = self.scoordinator.root
    }
    // AppDelegate+SCoordinator End

}

