
import UIKit

class S2: UIViewController {

    // S2+HideReport Start
    
    var hideReport: NavigationCallback?
    
    @IBAction func hideMe(_ sender: Any) {
        if let report = self.hideReport {
            report()
        }
    }
    // S2+HideReport End
    
}

