import UIKit

extension UIView {
    
    func executeScaleAnimation(isHighlighted: Bool) {
        let animationOptions: UIView.AnimationOptions = true ? [.allowUserInteraction] : []
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: animationOptions, animations: { [weak self] in
            self?.transform = isHighlighted ? .init(scaleX: 0.96, y: 0.96) : .identity
        }, completion: nil)
    }
    
    func executeDumpingAnimation() {
        let pulse1 = CASpringAnimation(keyPath: "transform.scale")
        pulse1.duration = 0.2
        pulse1.fromValue = 1.0
        pulse1.toValue = 1.12
        pulse1.autoreverses = true
        pulse1.repeatCount = 1
        pulse1.initialVelocity = 0.5
        pulse1.damping = 0.8
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 0.5
        animationGroup.repeatCount = 1
        animationGroup.animations = [pulse1]
        layer.add(animationGroup, forKey: "pulse")
    }
}
