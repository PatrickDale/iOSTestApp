import UIKit
import Quick
import Nimble

@testable import testApp

class ViewControllerTests: QuickSpec {
    override func spec() {
        describe("viewDidLoad") {
            it("should set the label to the total number of ACs") {
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyBoard.instantiateInitialViewController() as! ViewController
                let _ = viewController.view

                //flakey assertion with lots of overhead
                expect(viewController.label.text) == "14"
            }
        }
    }
}
