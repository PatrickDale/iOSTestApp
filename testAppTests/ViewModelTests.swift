import Foundation
import Quick
import Nimble

@testable import testApp

class ViewModelTests : QuickSpec {
    override func spec() {
        describe("total number of ACs") {
            it("should return the total number of ACs in the program") {
                var viewModel = ViewModel()
                viewModel.numberOfConACs = 7
                viewModel.numberOfConGradACs = 4

                let totalNumberAsString = "11"

                expect(viewModel.totalNumberOfACsAsString) == totalNumberAsString
            }
        }
    }
}