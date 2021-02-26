import UIKit

class ViewController: UIViewController {
    private struct Constants {
        static let backgrounColor = Colors.mainBackgroundColor
    }
    
    @IBOutlet var mainView: UIView!
    @IBOutlet var usersTableView: UITableView!
    
    //    TODO: testData
    private let list: [Message] = [
        Message(username: "Test1", date: Date(), userPhoto: UIImage(named: "avatar"), text: "Lorem ipsum", likeCount: 11, picture: nil),
        Message(username: "Test2", date: Date(), userPhoto: UIImage(named: "avatar"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lacinia, risus at consectetur malesuada, justo magna vehicula purus, sit amet commodo lectus neque vel lacus. Praesent venenatis enim mi. Phasellus semper bibendum commodo. Morbi leo risus, vestibulum id interdum interdum, euismod interdum est. ", likeCount: 22, picture: UIImage(named: "boxedwater")),
        Message(username: "Test3", date: Date(), userPhoto: UIImage(named: "avatar"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lacinia, risus at consectetur malesuada, justo magna vehicula purus, sit amet commodo lectus neque vel lacus. Praesent venenatis enim mi. Phasellus semper bibendum commodo. Morbi leo risus, vestibulum id interdum interdum, euismod interdum est. ", likeCount: 88, picture: nil),
        Message(username: "Shreya", date: Date(), userPhoto: UIImage(named: "Shreya Nithin"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", likeCount: 69, picture: UIImage(named: "Beach and Palm Tree")),
        Message(username: "Kim", date: Date(), userPhoto: UIImage(named: "Kim Yu"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", likeCount: 18, picture: nil),
        Message(username: "Derek", date: Date(), userPhoto: UIImage(named: "Derek Fowler"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", likeCount: 54, picture: nil)
    ]
    
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
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if list[indexPath.row].picture != nil {
            guard let cell = usersTableView.dequeueReusableCell(withIdentifier: String(describing: ImageTableViewCell.self), for: indexPath) as? ImageTableViewCell else { return UITableViewCell() }
            cell.fill(model: list[indexPath.row])
            cell.delegate = self
            return cell
        } else {
            guard let cell = usersTableView.dequeueReusableCell(withIdentifier: String(describing: SimpleTableViewCell.self), for: indexPath) as? SimpleTableViewCell else { return UITableViewCell() }
            cell.fill(model: list[indexPath.row])
            cell.delegate = self
            return cell
        }
    }
    
}

extension ViewController: MessageCellDelegate {
    func onLikeButton(cell: SimpleTableViewCell) {
        print("🟢🟢🟢 Delegate received cell!")
    }
}
