
import UIKit

class SCoordinator {

    var root: UIViewController!

    init() {
        // SCoordinator+S1 Start
        self.setupS1()
        
        // SCoordinator+S1 End
        // SCoordinator+S1DisplayS2 Start
        self.setupS1ToDisplayS2()
        
        // SCoordinator+S1DisplayS2 End
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
    // SCoordinator+S1DisplayS2 Start
    
    private func setupS1ToDisplayS2() {
        self.s1.displayAnotherScreenReport.subscribe { [unowned self] in
            // Create S2.
            let s2: S2 = self.vc(name: "S2")
    
            // Display S2.
            self.s1.present(s2, animated: true, completion: nil)
    
            // Hide S2 when prompted. Subscription lives while S2 lives.
            s2.hideReport.subscribe { [weak s2] in
                guard let strongS2 = s2 else { return }
                strongS2.dismiss(animated: true, completion: nil)
            }
            .disposed(by: s2.reporterBag)
        }
    }
    // SCoordinator+S1DisplayS2 End

}

