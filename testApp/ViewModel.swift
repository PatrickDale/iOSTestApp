import Foundation
import ReactiveCocoa

struct ViewModel {

    var peopleList = MutableProperty<[Person]>([])
    var peopleService: ServiceType?

    init(peopleService: ServiceType) {
        self.peopleService = peopleService
        peopleService.getAllPeople { people in
            self.peopleList.value = people
        }
    }
}