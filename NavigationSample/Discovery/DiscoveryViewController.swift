
import UIKit

class DiscoveryViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let label = UILabel()
        label.text = "Discovery Screen"
        label.frame = CGRect(x: 20, y: 100, width: 300, height: 30)
        view.addSubview(label)
        
        let dismissButton = UIButton(type: .system)
        dismissButton.setTitle("Dismiss", for: .normal)
        dismissButton.frame = CGRect(x: 20, y: 150, width: 100, height: 30)
        dismissButton.addTarget(self, action: #selector(dismissButtonTapped), for: .touchUpInside)
        view.addSubview(dismissButton)
    }
    
    @objc func dismissButtonTapped() {
        //self.navigationController?.dismiss(animated: true)
        Navigation.shared.pop()
    }
}
