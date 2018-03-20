FEATURE SCoordinator.swift/Setup
self.setupS1ToDisplayS2()

FEATURE SCoordinator.swift/Impl

private func setupS1ToDisplayS2() {
    self.s1.displayS2Report.subscribe { [unowned self] in
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
