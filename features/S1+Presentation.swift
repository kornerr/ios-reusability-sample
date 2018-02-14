FEATURE S1.swift/Impl
@IBAction func displayS2(_ sender: Any) {
    let maybeVC = self.storyboard?.instantiateViewController(withIdentifier: "S2")
    guard let vc = maybeVC else { return }
    self.present(vc, animated: true, completion: nil)
}
