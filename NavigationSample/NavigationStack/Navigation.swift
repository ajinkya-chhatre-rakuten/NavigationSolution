import UIKit


class BaseViewController: UIViewController {
    var name: String
    var baseScreen: String

    init(name: String, baseScreen: String) {
        self.name = name
        self.baseScreen = baseScreen
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class Navigation {
    
    static let shared = Navigation()

    func push(newController: BaseViewController) {

        if let topNavigationStack = UIApplication.topNavigationController(), let topController = topNavigationStack.topViewController as? BaseViewController {
            if topController.baseScreen == newController.baseScreen {
                topNavigationStack.pushViewController(newController, animated: true)
            } else {
                let newNavigationController = UINavigationController(rootViewController: newController)
                //topNavigationStack.pushViewController(newNavigationController, animated: true)
                topNavigationStack.present(newNavigationController, animated: true)
            }
        }
    }

    func pop() {
        
        let baseScreens = Array(supportedPaths.keys)
        
        if let topNavigationStack = UIApplication.topNavigationController(), let topController = topNavigationStack.topViewController as? BaseViewController {
            if baseScreens.contains(topController.name) {
                //topNavigationStack.popViewController(animated: true)
                topNavigationStack.dismiss(animated: true)
            } else {
                _ = topNavigationStack.popViewController(animated: true)
            }
        }
    }
}


extension UIApplication {
    class func topMostViewController(base: UIViewController? = UIApplication.shared.windows.first?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topMostViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return topMostViewController(base: selected)
        }
        if let presented = base?.presentedViewController {
            return topMostViewController(base: presented)
        }
        return base
    }

    class func topNavigationController() -> UINavigationController? {
        return UIApplication.topMostViewController()?.navigationController
    }
}
