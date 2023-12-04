
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Create three view controllers
        let walletViewController = WalletViewController(name: Screens.wallet.rawValue, baseScreen: Screens.wallet.rawValue)
        walletViewController.tabBarItem =  UITabBarItem(title: "Wallet", image: UIImage(systemName: "house"), tag: 0)

        let discoveryViewController = DiscoveryViewController(name: Screens.discovery.rawValue, baseScreen: Screens.discovery.rawValue)
        discoveryViewController.tabBarItem = UITabBarItem(title: "Discovery", image: UIImage(systemName: "globe.americas"), tag: 1)

        let missionViewController = MissionViewController(name: Screens.mission.rawValue, baseScreen: Screens.mission.rawValue)
        missionViewController.tabBarItem = UITabBarItem(title: "Mission", image: UIImage(systemName: "wifi.circle"), tag: 2)

        // Create navigation controllers and assign view controllers to them
        let firstNavigationController = UINavigationController(rootViewController: walletViewController)
        let secondNavigationController = UINavigationController(rootViewController: discoveryViewController)
        let thirdNavigationController = UINavigationController(rootViewController: missionViewController)

        // Set the view controllers of the tab bar controller
        self.viewControllers = [firstNavigationController, secondNavigationController, thirdNavigationController]
    }
}

