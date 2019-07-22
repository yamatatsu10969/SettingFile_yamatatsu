import UIKit

extension UITextField {

    func clear() {
        text = ""
        attributedText = NSAttributedString(string: "")
    }

    func setPlaceHolder(textColor: UIColor) {
        guard let holder = placeholder, !holder.isEmpty else { return }
        attributedPlaceholder = NSAttributedString(string: holder, attributes: [.foregroundColor: textColor])
    }

    func addPadding(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: frame.height))
        leftView = paddingView
        rightView = paddingView
        leftViewMode = .always
    }

    enum Place {
        case left
        case right
    }

    func addIcon(_ image: UIImage, place: Place, padding: CGFloat) {
        let imageView = UIImageView(image: image)
        imageView.contentMode = .center
        switch place {
        case .left:
            leftView = imageView
            leftView?.frame.size = CGSize(width: image.size.width + padding, height: image.size.height)
            leftViewMode = .always
        case .right:
            rightView = imageView
            rightView?.frame.size = CGSize(width: image.size.width + padding, height: image.size.height)
            rightViewMode = .always
        }
    }
}
