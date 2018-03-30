
import UIKit

class SCoordinator {

    var root: UIViewController!

    init() {
        // FEATURE SCoordinator+S1/Setup
        // FEATURE SCoordinator+S1DisplayS2/Setup
        // FEATURE SCoordinator+S1DisplayS2OrS3/Setup
    }

    private func vc<T>(name: String) -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: name)
        return vc as! T
    }

    // FEATURE SCoordinator+S1/Impl
    // FEATURE SCoordinator+S1DisplayS2/Impl
    // FEATURE SCoordinator+S1DisplayS2OrS3/Impl

}

