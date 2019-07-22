import UIKit

extension UIView {
    
    enum Direction {
        case vertical
        case horizontal
    }
    
    func gradient(colors: [UIColor], direction: Direction) {
        let gradient = CAGradientLayer()
        gradient.colors = colors.map { $0.cgColor }
        switch direction {
        case .vertical:
            gradient.startPoint = CGPoint(x: 0.5, y: 1.0)
            gradient.endPoint = CGPoint(x: 0.5, y: 0.0)
        case .horizontal:
            gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        }
        gradient.locations = [0, 1]
        gradient.frame = bounds
        layer.insertSublayer(gradient, at: 0)
    }
}

