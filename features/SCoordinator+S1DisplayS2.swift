FEATURE SCoordinator.swift/Setup
self.setupS1ToDisplayS2()

FEATURE SCoordinator.swift/Impl

private func setupS1ToDisplayS2() {
    self.s1.displayAnotherScreenReport = { [unowned self] in

        // Create and display S2 screen.
        let screen: S2 = self.vc(name: "S2")
        self.s1.present(screen, animated: true, completion: nil)

        // Hide S2 when prompted.
        screen.hideReport = { [weak screen] in
            guard let strongScreen = screen else { return }
            strongScreen.dismiss(animated: true, completion: nil)
        }
    }
}
