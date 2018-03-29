
import UIKit

class S1: UIViewController {

    // S1+Report Start
    
    let displayAnotherScreenReport = Reporter()
    
    @IBAction func displayAnotherScreen(_ sender: Any) {
        self.displayAnotherScreenReport.report()
    }
    // S1+Report End

}

