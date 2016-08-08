import UIKit
import ReactiveCocoa

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    var viewModel: ViewModel!
    let peopleSignal = MutableProperty<[Person]>([])

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel(peopleService: Service())

        //Binds the signal to the producer in the view model
        //now it is listening for changes on the viewmodel's value
        peopleSignal <~ viewModel.peopleList.producer

        //execute closure when value in VM changes
        peopleSignal.producer.startWithNext { _ in
            //the viewModels data is updates, so lets reload the table
//            self.tableView.reloadData()
        }
    }
}

