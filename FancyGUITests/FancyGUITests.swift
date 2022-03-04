import XCTest
@testable import FancyGUI

class FancyGUITests: XCTestCase {
    
    var controller:ViewController!
    var storyboard:UIStoryboard!
    
    override func setUpWithError() throws {
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        controller = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        controller.loadViewIfNeeded()
        XCTAssertNotNil(controller.label) //Is wired up correctly with outlet
    }
    
    override func tearDownWithError() throws {
        storyboard = nil
        controller = nil
    }
    
    func testWhenWeTypeSmthLabelChanges() throws {
        controller.inputField.text = "Foo"
        controller.onClickUpdate()
        XCTAssertEqual("Foo", controller.label.text)
    }
    
    func testReturnTrueForSmallerAsTen() throws {
        XCTAssertFalse(controller.isReallyGreaterThanTenOrEqualTo(number: 2))
    }
    
    func testReturnFalseForGreaterAsTen() throws {
        XCTAssertTrue(controller.isReallyGreaterThanTenOrEqualTo(number: 11))
    }
}
