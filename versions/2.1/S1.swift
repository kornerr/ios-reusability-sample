
import UIKit

class S1: UIViewController {

    // S1+Report Start
    
    let displayS2Report = Reporter()
    
    @IBAction func displayS2(_ sender: Any) {
        // Report the need to display S2.
        self.displayS2Report.report()
    }
    // S1+Report End

}

