
import UIKit

class UnclaimedViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let label = UILabel()
        label.text = "Unclaimed Missions Screen"
        label.frame = CGRect(x: 20, y: 100, width: 300, height: 30)
        view.addSubview(label)
        
        let backButton = UIButton(type: .system)
        backButton.setTitle("Back", for: .normal)
        backButton.frame = CGRect(x: 20, y: 150, width: 100, height: 30)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        view.addSubview(backButton)
    }
    
    @objc func backButtonTapped() {
        //self.navigationController?.dismiss(animated: true)
        Navigation.shared.pop()
    }
}
