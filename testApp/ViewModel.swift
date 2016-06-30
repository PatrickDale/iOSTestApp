import Foundation

struct ViewModel {
    var numberOfConACs = 10
    var numberOfConGradACs = 4

    var totalNumberOfACsAsString: String {
        return "\(numberOfConGradACs + numberOfConACs)"
    }

}