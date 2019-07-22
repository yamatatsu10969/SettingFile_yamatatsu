import Foundation

extension Array {

    mutating func remove<T>(object: T) where T: Equatable {
        self = self.filter { $0 as? T != object }
    }

    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }

    func findIndex(includeElement: (Element) -> Bool) -> [Int] {
        var indexArray: [Int] = []
        enumerated().forEach { index, element in
            if includeElement(element) {
                indexArray.append(index)
            }
        }
        return indexArray
    }
}

