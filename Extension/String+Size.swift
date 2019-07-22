import UIKit

extension String {
    
    func height(font: UIFont, width: CGFloat) -> CGFloat {
        let attributeDic = [NSAttributedString.Key.font: font]
        let size = self.boundingRect(with: CGSize(width: width, height: CGFloat.greatestFiniteMagnitude),
                                     options: [.usesLineFragmentOrigin, .usesFontLeading],
                                     attributes: attributeDic,
                                     context: nil).size
        return ceil(size.height)
    }
    
    func width(font: UIFont, height: CGFloat) -> CGFloat {
        let attributeDic = [NSAttributedString.Key.font: font]
        let size = self.boundingRect(with: CGSize(width: CGFloat.greatestFiniteMagnitude, height: height),
                                     options: [.usesLineFragmentOrigin, .usesFontLeading],
                                     attributes: attributeDic,
                                     context: nil).size
        return ceil(size.width)
    }
}

