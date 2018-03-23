FEATURE S3.swift/Impl

let hideReport = Reporter()

@IBAction func hideMe(_ sender: Any) {
    // Report the need to hide ourselves.
    self.hideReport.report()
}
