import IQKeyboardManagerSwift

struct Keyboard {

    static func configure() {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.toolbarDoneBarButtonItemText = "完了"
        IQKeyboardManager.shared.toolbarTintColor = Color.black
        IQKeyboardManager.shared.toolbarBarTintColor = Color.white
    }
}
