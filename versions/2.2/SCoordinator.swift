
import UIKit

class SCoordinator {

    var root: UIViewController!

    init() {
        // SCoordinator+S1 Start
        self.setupS1()
        
        // SCoordinator+S1 End
        // SCoordinator+S1DisplayS2OrS3 Start
        self.setupS1ToDisplayS2OrS3()
        
        // SCoordinator+S1DisplayS2OrS3 End
    }

    private func vc<T>(name: String) -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: name)
        return vc as! T
    }

    // SCoordinator+S1 Start
    private var s1: S1!
    
    private func setupS1() {
        self.s1 = vc(name: "S1")
        self.root = self.s1
    }
    // SCoordinator+S1 End
    // SCoordinator+S1DisplayS2OrS3 Start
    private func setupS1ToDisplayS2OrS3() {
        self.s1.displayS2OrS3Report.subscribe { [unowned self] in
            let sheet = UIAlertController(title: "Select", message: nil, preferredStyle: .actionSheet)
            sheet.addAction(
                UIAlertAction(
                    title: "Display S2",
                    style: .default,
                    handler: { [unowned self] _ in
                        self.displayS2()
                    }
                )
            )
            sheet.addAction(
                UIAlertAction(
                    title: "Display S3",
                    style: .default,
                    handler: { [unowned self] _ in
                        self.displayS3()
                    }
                )
            )
            self.s1.present(sheet, animated: true, completion: nil)
        }
    }
    
    private func displayS2() {
        // Create screen.
        let screen: S2 = self.vc(name: "S2")
        // Display screen from S1.
        self.s1.present(screen, animated: true, completion: nil)
        // Hide screen when prompted. Subscription lives while the screen lives.
        screen.hideReport.subscribe { [weak screen] in
            guard let strongScreen = screen else { return }
            strongScreen.dismiss(animated: true, completion: nil)
        }
        .disposed(by: screen.reporterBag)
    }
    
    private func displayS3() {
        // Create screen.
        let screen: S3 = self.vc(name: "S3")
        // Display screen from S1.
        self.s1.present(screen, animated: true, completion: nil)
        // Hide screen when prompted. Subscription lives while the screen lives.
        screen.hideReport.subscribe { [weak screen] in
            guard let strongScreen = screen else { return }
            strongScreen.dismiss(animated: true, completion: nil)
        }
        .disposed(by: screen.reporterBag)
    }
    
    // SCoordinator+S1DisplayS2OrS3 End

}

