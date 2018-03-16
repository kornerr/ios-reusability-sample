
import UIKit

class SCoordinator {

    var root: UIViewController!

    init() {
        // SCoordinator+S1 Start
        self.setupS1()
        
        // SCoordinator+S1 End
    }

    private func vc<T>(name: String) -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "S1")
        return vc as! T
    }

    // SCoordinator+S1 Start
    private var s1: S1!
    
    private func setupS1() {
        self.s1 = vc(name: "S1")
        self.root = self.s1
    }
    // SCoordinator+S1 End

}

