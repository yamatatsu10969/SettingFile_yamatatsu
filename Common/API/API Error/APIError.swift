import Foundation
import SwiftyJSON

public enum APIError: Error {
    case invalidResponseType
    case invalidResponseNoContent
    case badRequest
    case fobiddenRequest
    case notFound
    case responseError
    
    init(errorCode: Int) {
        if errorCode == 404 {
            self = .notFound
        } else if errorCode == 403 {
            self = .fobiddenRequest
        } else if errorCode == 400 {
            self = .badRequest
        } else {
            self = .unexpectedError
        }
    }
    
    init(json: JSON) {
        self.init(errorCode: json["status"].intValue)
    }
}

struct ErrorMessage {
    
    let errorMessage: String
    
    init(error: Error) {
        if case APIError.invalidResponseType = error {
            errorMessage = "サーバーエラーです"
        } else if case APIError.badRequest = error {
            errorMessage = "サーバーエラーです"
        } else {
            errorMessage = "サーバーエラーです"
        }
    }
}
