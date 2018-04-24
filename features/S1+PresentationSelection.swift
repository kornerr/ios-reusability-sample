FEATURE S1.swift/Impl

private func displayScreen(name: String) {
    let maybeVC = self.storyboard?.instantiateViewController(withIdentifier: name)
    guard let vc = maybeVC else { return }
    self.present(vc, animated: true, completion: nil)
}

@IBAction func displayAnotherScreen(_ sender: Any) {
    let sheet = UIAlertController(title: "Select", message: nil, preferredStyle: .actionSheet)
    sheet.addAction("Display S2") { [unowned self] _ in
        self.displayScreen(name: "S2")
    }
    sheet.addAction("Display S3") { [unowned self] _ in
        self.displayScreen(name: "S3")
    }
    self.present(sheet, animated: true, completion: nil)
}

