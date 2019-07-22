import UIKit

extension UIImage {
    
    var original: UIImage {
        return withRenderingMode(.alwaysOriginal)
    }
}
