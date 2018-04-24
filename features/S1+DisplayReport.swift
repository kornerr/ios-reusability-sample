FEATURE S1.swift/Impl

var displayAnotherScreenReport: NavigationCallback?

@IBAction func displayAnotherScreen(_ sender: Any) {
    if let report = self.displayAnotherScreenReport {
        report()
    }
}
