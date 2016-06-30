import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    var viewModel: ViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
        label.text = viewModel.totalNumberOfACsAsString
    }
}

