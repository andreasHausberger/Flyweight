import XCTest

import FlyweightTests

var tests = [XCTestCaseEntry]()
tests += FlyweightTests.allTests()
XCTMain(tests)
