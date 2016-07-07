import Foundation
import Alamofire
import SwiftyJSON

protocol ServiceType {
    func getAllPeople(onCompletion: ([Person]) -> Void)
}

class Service : ServiceType {

    func getAllPeople(onCompletion: ([Person]) -> Void) {
        Alamofire
            .request(.GET, "http://localhost:8000/list")
            .validate(statusCode: 200..<400)
            .responseJSON { response in
                if let value = response.result.value {
                    let json = JSON(value)
                    let people = Transformer.transformListOfPeople(json)
                    onCompletion(people)
                }
        }

    }
}