
import UIKit

class CalendarViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let label = UILabel()
        label.text = "Calendar Screen"
        label.frame = CGRect(x: 20, y: 100, width: 300, height: 30)
        view.addSubview(label)
        
        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Next", for: .normal)
        nextButton.frame = CGRect(x: 20, y: 150, width: 100, height: 30)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        view.addSubview(nextButton)
    }
    
    @objc func nextButtonTapped() {
        let detailsVC = DetailsViewController(name: Screens.details.rawValue, baseScreen: Screens.wallet.rawValue)
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
}
