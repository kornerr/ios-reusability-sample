FEATURE S2.swift/Impl

var hideReport: NavigationCallback?

@IBAction func hideMe(_ sender: Any) {
    if let report = self.hideReport {
        report()
    }
}
