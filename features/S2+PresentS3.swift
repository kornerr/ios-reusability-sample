FEATURE S2.swift/Impl
private func displayScreen(name: String) {
    let maybeVC = self.storyboard?.instantiateViewController(withIdentifier: name)
    guard let vc = maybeVC else { return }
    self.present(vc, animated: true, completion: nil)
}

@IBAction func showS3(_ sender: Any) {
    self.displayScreen(name: "S3")
}
