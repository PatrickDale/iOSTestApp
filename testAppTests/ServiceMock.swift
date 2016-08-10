import Foundation

@testable import testApp

class ServiceMock : Service {
    var getAllPeopleCalled = false
    var stubbedPeopleWithoutDetail = [Person(id: 1, name: "someName")]

    override func getAllPeople(onCompletion: ([Person]) -> Void){
        getAllPeopleCalled = true
        onCompletion(stubbedPeopleWithoutDetail)
    }

}