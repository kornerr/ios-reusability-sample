# Overview

This is a sample iOS application to depict code reusability samples with coordinators and feature-tool

# Dependencies

You must have [feature-tool][feature-tool] in your $PATH to generate versions.

# Building

* Find the version you are interested in (TODO List of releases)
* Set current version and generate Xcode project
    * `./set_version 15 ; xcodegen`
* Open generated `ReusabilitySample.xcodeproj` with Xcode
* Run the project as usual

**Note**: only use `gen_versions` for development.

[feature-tool]: https://bitbucket.org/ogstudio/feature-tool
