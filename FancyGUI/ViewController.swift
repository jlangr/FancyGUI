import UIKit

class ViewController: UIViewController {

    @IBOutlet private(set) var label: UILabel!
    @IBOutlet private(set) var inputField: UITextField!
    @IBOutlet private(set) var submitButton: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickUpdate() {
        label.text = inputField.text
    }
    
    func isReallyGreaterThanTenOrEqualTo(number: Int) -> Bool {
        if (number >= 10) {
            return true
        }
        return false
    }
        
}
