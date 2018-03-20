
import UIKit

class S2: UIViewController {

    // S2+ReporterBag Start
    let reporterBag = ReporterBag()
    // S2+ReporterBag End
    // S2+HideReport Start
    
    let hideReport = Reporter()
    
    @IBAction func hideMe(_ sender: Any) {
        // Report the need to hide ourselves.
        self.hideReport.report()
    }
    // S2+HideReport End
    
}

