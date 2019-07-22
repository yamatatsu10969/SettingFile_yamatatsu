import UIKit

extension UICollectionView {

    func nowPosition(cell: UICollectionViewCell) -> CGRect {
        let point = CGPoint(x: cell.frame.origin.x - contentOffset.x, y: cell.frame.origin.y - contentOffset.y)
        let size = cell.bounds.size
        return CGRect(x: point.x, y: point.y, width: size.width, height: size.height)
    }
}
