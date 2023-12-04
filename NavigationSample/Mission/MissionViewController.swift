
import UIKit

class MissionViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let label = UILabel()
        label.text = "Mission Screen"
        label.frame = CGRect(x: 20, y: 100, width: 300, height: 30)
        view.addSubview(label)
        
        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Next", for: .normal)
        nextButton.frame = CGRect(x: 20, y: 150, width: 100, height: 30)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        view.addSubview(nextButton)
        
        let dismissButton = UIButton(type: .system)
        dismissButton.setTitle("Dismiss", for: .normal)
        dismissButton.frame = CGRect(x: 160, y: 150, width: 100, height: 30)
        dismissButton.addTarget(self, action: #selector(dismissButtonTapped), for: .touchUpInside)
        view.addSubview(dismissButton)
    }
    
    @objc func nextButtonTapped() {
        let unclaimedVC = UnclaimedViewController(name: Screens.wallet.rawValue, baseScreen: Screens.mission.rawValue)
        self.navigationController?.pushViewController(unclaimedVC, animated: true)
    }
    
    @objc func dismissButtonTapped() {
        //self.navigationController?.dismiss(animated: true)
        Navigation.shared.pop()
    }
}
