import Foundation
import Quick
import Nimble
import SwiftyJSON

@testable import testApp

class TransformerTests: QuickSpec {
    override func spec() {
        describe("TransformListOfPeople") {
            it("should take a json response without detail and transform it into a person") {
                let expectedPerson = Person(id: 1, name: "someName")
                let jsonResponse = JSON([["id": 1, "name":"someName"]])
                let actualPerson = Transformer.transformListOfPeople(jsonResponse).first
                expect(expectedPerson) == actualPerson
            }
        }
    }
}