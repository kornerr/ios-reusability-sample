
import UIKit

extension UIAlertController
{

    typealias Callback = (UIAlertAction) -> Void

    func addAction(_ title: String, handler: @escaping Callback)
    {
        self.addAction(
            UIAlertAction(title: title, style: .default, handler: handler)
        )
    }

}


