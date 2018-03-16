FEATURE SCoordinator.swift/Setup
self.setupS1()

FEATURE SCoordinator.swift/Impl
private var s1: S1!

private func setupS1() {
    self.s1 = vc(name: "S1")
    self.root = self.s1
}
