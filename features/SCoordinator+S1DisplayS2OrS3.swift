FEATURE SCoordinator.swift/Setup
self.setupS1ToDisplayS2OrS3()

FEATURE SCoordinator.swift/Impl
private func setupS1ToDisplayS2OrS3() {
    self.s1.displayAnotherScreenReport = { [unowned self] in
        let sheet = UIAlertController(title: "Select", message: nil, preferredStyle: .actionSheet)
        sheet.addAction("Display S2") { [unowned self] _ in
            self.displayS2()
        }
        sheet.addAction("Display S3") { [unowned self] _ in
            self.displayS3()
        }
        self.s1.present(sheet, animated: true, completion: nil)
    }
}

private func displayS2() {
    // Create and display S2 screen.
    let screen: S2 = self.vc(name: "S2")
    self.s1.present(screen, animated: true, completion: nil)

    // Hide S2 when prompted. 
    screen.hideReport = { [weak screen] in
        screen?.dismiss(animated: true, completion: nil)
    }
}

private func displayS3() {
    // Create and display S3 screen.
    let screen: S3 = self.vc(name: "S3")
    self.s1.present(screen, animated: true, completion: nil)

    // Hide S3 when prompted. 
    screen.hideReport = { [weak screen] in
        screen?.dismiss(animated: true, completion: nil)
    }
}

