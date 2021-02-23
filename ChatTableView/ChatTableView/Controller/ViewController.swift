import UIKit

class ViewController: UIViewController {

    @IBOutlet var usersTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usersTableView.register(UINib(nibName: String(describing: SimpleTableViewCell.self), bundle: Bundle.main), forCellReuseIdentifier: String(describing: SimpleTableViewCell.self))
        usersTableView.tableFooterView = UIView()
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = usersTableView.dequeueReusableCell(withIdentifier: String(describing: SimpleTableViewCell.self), for: indexPath) as? SimpleTableViewCell else { return UITableViewCell() }
        return cell
    }
}
