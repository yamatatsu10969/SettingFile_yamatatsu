import Foundation

extension String {

    var isPhoneNumberValid: Bool {
        let regex = "^(070|080|090)\\d{4}\\d{4}$"
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: self)
    }
}

