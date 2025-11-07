//
//  DfinerySwiftSampleUITestsLaunchTests.swift
//  DfinerySwiftSampleUITests
//
//  Created by Jimmy.강세훈 on 11/19/25.
//

import XCTest

final class DfinerySwiftSampleUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.wait(for: .runningForeground, timeout: 5))
    }
}
