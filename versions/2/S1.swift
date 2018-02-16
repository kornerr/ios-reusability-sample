
import UIKit

class S1: UIViewController {

    // S1+PresentationSelection Start
    
    private func displayScreen(name: String) {
        let maybeVC = self.storyboard?.instantiateViewController(withIdentifier: name)
        guard let vc = maybeVC else { return }
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func displayS2(_ sender: Any) {
        let sheet = UIAlertController(title: "Select", message: nil, preferredStyle: .actionSheet)
        sheet.addAction(
            UIAlertAction(
                title: "Display S2",
                style: .default,
                handler: { [unowned self] _ in
                    self.displayScreen(name: "S2")
                }
            )
        )
        sheet.addAction(
            UIAlertAction(
                title: "Display S3",
                style: .default,
                handler: { [unowned self] _ in
                    self.displayScreen(name: "S3")
                }
            )
        )
        self.present(sheet, animated: true, completion: nil)
    }
    
    // S1+PresentationSelection End

}

