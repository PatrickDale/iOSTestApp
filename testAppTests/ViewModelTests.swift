import Foundation
import Quick
import Nimble

@testable import testApp

class ViewModelTests : QuickSpec {
    override func spec() {
        describe("People List View Model") {
            var viewModel: ViewModel!
            var peopleServiceMock: ServiceMock!

            beforeEach {
                peopleServiceMock = ServiceMock()
                viewModel = ViewModel(peopleService: peopleServiceMock)
            }
            it("should initialize with a list of people") {
                expect(viewModel.peopleList.value.count).toEventually(equal(1))
            }
        }
    }
}

