
import UIKit

class S3: UIViewController {

    // S3+HideReport Start
    
    var hideReport: NavigationCallback?
    
    @IBAction func hideMe(_ sender: Any) {
        if let report = self.hideReport {
            report()
        }
    }
    // S3+HideReport End
    
}

