import UIKit

struct Alert {
    
    private static func show(on viewController: UIViewController, title: String, message: String? = nil, optionTitle: String, completion: @escaping() -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: optionTitle, style: .default, handler: { (_) in
            completion()
        }))
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel, handler: nil))
        DispatchQueue.main.async { viewController.present(alert, animated: true, completion: nil) }
    }
    
    private static func show(on viewController: UIViewController, title: String, message: String? = nil, title1: String, completion1: @escaping() -> Void, title2: String, completion2: @escaping() -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: title1, style: .default, handler: { (_) in
            completion1()
        }))
        alert.addAction(UIAlertAction(title: title2, style: .default, handler: { (_) in
            completion2()
        }))
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel, handler: nil))
        DispatchQueue.main.async { viewController.present(alert, animated: true, completion: nil) }
    }
    
    static func show(on viewController: UIViewController, title: String, message: String? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async { viewController.present(alert, animated: true, completion: nil) }
    }
    
    static func show(on viewController: UIViewController, title: String, message: String? = nil, completion: @escaping() -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            completion()
        }))
        DispatchQueue.main.async { viewController.present(alert, animated: true, completion: nil) }
    }

}

