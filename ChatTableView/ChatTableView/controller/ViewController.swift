import UIKit

class ViewController: UIViewController {
    private struct Constants {
        static let backgrounColor = Colors.mainBackgroundColor
    }
    
    @IBOutlet var mainView: UIView!
    @IBOutlet var usersTableView: UITableView!
    
    private let model = MessageModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usersTableView.register(UINib(nibName: String(describing: SimpleTableViewCell.self), bundle: Bundle.main), forCellReuseIdentifier: String(describing: SimpleTableViewCell.self))
        
        usersTableView.register(UINib(nibName: String(describing: ImageTableViewCell.self), bundle: Bundle.main), forCellReuseIdentifier: String(describing: ImageTableViewCell.self))
        //        TODO: строки 24-26 убрать в настройки .xib
        mainView.backgroundColor = Constants.backgrounColor
        usersTableView.backgroundColor = Constants.backgrounColor
        usersTableView.tableFooterView = UIView()
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if model.messages[indexPath.row].picture != nil {
            guard let cell = usersTableView.dequeueReusableCell(withIdentifier: String(describing: ImageTableViewCell.self), for: indexPath) as? ImageTableViewCell else { return UITableViewCell() }
            cell.fill(model: model.messages[indexPath.row])
            cell.delegate = self
            return cell
        } else {
            guard let cell = usersTableView.dequeueReusableCell(withIdentifier: String(describing: SimpleTableViewCell.self), for: indexPath) as? SimpleTableViewCell else { return UITableViewCell() }
            cell.fill(model: model.messages[indexPath.row])
            cell.delegate = self
            return cell
        }
    }
    
}

extension ViewController: MessageCellDelegate {
    func onLikeButton(cell: SimpleTableViewCell) {
        guard let indexPath = usersTableView.indexPath(for: cell) else { return }
        model.updateLikeCount(at: indexPath.row)
        usersTableView.reloadData()
    }
}
