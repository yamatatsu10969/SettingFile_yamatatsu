import Nuke

extension UIImageView {
    
    func setImage(with url: URL?) {
        guard let url = url else { return }
        Nuke.loadImage(with: url, options: ImageLoadingOptions(transition: .fadeIn(duration: 0.3)), into: self)
    }
}
