import UIKit

extension String {

    func attribute() -> NSMutableAttributedString {
        return NSMutableAttributedString(string: self)
    }
}

extension NSMutableAttributedString {

    static func + (left: NSMutableAttributedString, right: NSMutableAttributedString) -> NSMutableAttributedString {
        left.append(right)
        return left
    }

    func font(_ font: UIFont) -> Self {
        addAttribute(.font, value: font, range: NSMakeRange(0, string.count))
        return self
    }

    func textColor(_ color: UIColor) -> Self {
        addAttribute(.foregroundColor, value: color, range: NSMakeRange(0, string.count))
        return self
    }

    func borderColor(_ color: UIColor) -> Self {
        addAttribute(.strokeColor, value: color, range: NSMakeRange(0, string.count))
        return self
    }

    func borderWidth(_ width: CGFloat) -> Self {
        addAttribute(.strokeWidth, value: width, range: NSMakeRange(0, string.count))
        return self
    }

    func backgroundColor(_ color: UIColor) -> Self {
        addAttribute(.backgroundColor, value: color, range: NSMakeRange(0, string.count))
        return self
    }

    func baseLineOffset(_ offset: CGFloat) -> Self {
        addAttribute(.baselineOffset, value: offset, range: NSMakeRange(0, string.count))
        return self
    }

    func underline(color: UIColor, style: NSUnderlineStyle) -> Self {
        let attributes: [NSAttributedString.Key : Any] = [
            .underlineStyle : style.rawValue,
            .underlineColor : color
        ]
        addAttributes(attributes, range: NSMakeRange(0, string.count))
        return self
    }

    func spacing(_ spacing: CGFloat) -> Self {
        addAttribute(.kern, value: spacing, range: NSMakeRange(0, string.count))
        return self
    }
}

