import XCTest
@testable import FancyGUI

class instanceInitializerViewControllerTests: XCTestCase {

    
    func test_viewDidAppear () {
        let sut = InstanceIntializerViewController(analytics: Analytics())
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
        
        // tests
    }
}
