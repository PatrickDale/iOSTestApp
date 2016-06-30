import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    var viewModel: ViewModel!

    var cons = 10
    var grads = 7

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
        label.text = viewModel.totalNumberOfACsAsString
    }
}

