
import UIKit

class S1: UIViewController {

    // S1+ReportS2OrS3 Start
    
    let displayS2OrS3Report = Reporter()
    
    @IBAction func displayS2OrS3(_ sender: Any) {
        // Report the need to display S2 or S3.
        self.displayS2OrS3Report.report()
    }
    // S1+ReportS2OrS3 End

}

