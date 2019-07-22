import Foundation

extension Date {
    
    var weekday: String {
        let calendar = Calendar(identifier: .gregorian)
        let component = calendar.component(.weekday, from: self)
        let weekday = component - 1
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ja")
        print(weekday)
        return formatter.shortWeekdaySymbols[weekday]
    }
}
