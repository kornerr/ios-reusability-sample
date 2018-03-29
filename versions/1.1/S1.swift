
import UIKit

class S1: UIViewController {

    // S1+Presentation Start
    @IBAction func displayAnotherScreen(_ sender: Any) {
        let maybeVC = self.storyboard?.instantiateViewController(withIdentifier: "S2")
        guard let vc = maybeVC else { return }
        self.present(vc, animated: true, completion: nil)
    }
    // S1+Presentation End

}

