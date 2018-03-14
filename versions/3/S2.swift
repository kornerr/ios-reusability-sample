
import UIKit

class S2: UIViewController {

    // S2+Dismission Start
    @IBAction func hideMe(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    // S2+Dismission End
    // S2+PresentS3 Start
    private func displayScreen(name: String) {
        let maybeVC = self.storyboard?.instantiateViewController(withIdentifier: name)
        guard let vc = maybeVC else { return }
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func showS3(_ sender: Any) {
        self.displayScreen(name: "S3")
    }
    // S2+PresentS3 End
    
}

