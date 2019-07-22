import Nuke

extension UIButton {

    func setImage(with url: URL?) {
        guard let url = url else { return }
        guard let imageView = self.imageView else { return }
        
        Nuke.loadImage(with: url, options: ImageLoadingOptions(transition: .fadeIn(duration: 0.3)), into: imageView)
    }
}
