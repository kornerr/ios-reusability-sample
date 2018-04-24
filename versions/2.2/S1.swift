
import UIKit

class S1: UIViewController {

    // S1+DisplayReport Start
    
    var displayAnotherScreenReport: NavigationCallback?
    
    @IBAction func displayAnotherScreen(_ sender: Any) {
        if let report = self.displayAnotherScreenReport {
            report()
        }
    }
    // S1+DisplayReport End

}

