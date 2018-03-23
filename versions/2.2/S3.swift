
import UIKit

class S3: UIViewController {

    // S3+ReporterBag Start
    let reporterBag = ReporterBag()
    // S3+ReporterBag End
    // S3+HideReport Start
    
    let hideReport = Reporter()
    
    @IBAction func hideMe(_ sender: Any) {
        // Report the need to hide ourselves.
        self.hideReport.report()
    }
    // S3+HideReport End
    
}

