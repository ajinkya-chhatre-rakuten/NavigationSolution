
import UIKit

class DeepLinkManager {
    
    static let shared = DeepLinkManager()
    
    func handleDeepLink(path: String) {
        guard let viewController = getBaseViewControllerFor(path: path) else { return }
        Navigation.shared.push(newController: viewController)
    }
    
    private func getBaseViewControllerFor(path: String) -> BaseViewController? {
        switch path {
            case Screens.wallet.rawValue:
                return WalletViewController(name: Screens.wallet.rawValue, baseScreen: Screens.wallet.rawValue)
            case Screens.discovery.rawValue:
                return DiscoveryViewController(name: Screens.discovery.rawValue, baseScreen: Screens.discovery.rawValue)
            case Screens.mission.rawValue:
                return MissionViewController(name: Screens.mission.rawValue, baseScreen: Screens.mission.rawValue)
            case Screens.calendar.rawValue:
                return CalendarViewController(name: Screens.calendar.rawValue, baseScreen: Screens.wallet.rawValue)
            case Screens.details.rawValue:
                return DetailsViewController(name: Screens.details.rawValue, baseScreen: Screens.wallet.rawValue)
            case Screens.unclaimed.rawValue:
                return UnclaimedViewController(name: Screens.unclaimed.rawValue, baseScreen: Screens.mission.rawValue)
            default:
                print("Base controller not matched")
                return nil
        }
    }
}
