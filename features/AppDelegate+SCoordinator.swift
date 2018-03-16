FEATURE AppDelegate.swift/Setup
// Create window.
self.window = UIWindow(frame: UIScreen.main.bounds)
// Create coordinator.
self.setupSCoordinator()
// Display window.
self.window!.backgroundColor = UIColor.white
self.window!.makeKeyAndVisible()

FEATURE AppDelegate.swift/Impl
private var scoordinator: SCoordinator!

private func setupSCoordinator() {
    self.scoordinator = SCoordinator()
    self.window!.rootViewController = self.scoordinator.root
}
