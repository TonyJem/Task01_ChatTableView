import UIKit

class ViewController: UIViewController {

    @IBOutlet var usersTableView: UITableView!
    
//    TODO: testData
    let list: [User] = [
        User(name: "Test1", date: Date(), photo: UIImage(named: "avatar"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", likeCount: 11, picture: nil),
        User(name: "Test2", date: Date(), photo: UIImage(named: "avatar"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lacinia, risus at consectetur malesuada, justo magna vehicula purus, sit amet commodo lectus neque vel lacus. Praesent venenatis enim mi. Phasellus semper bibendum commodo. Morbi leo risus, vestibulum id interdum interdum, euismod interdum est. ", likeCount: 22, picture: UIImage(named: "boxedwater")),
        User(name: "Test3", date: Date(), photo: UIImage(named: "avatar"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lacinia, risus at consectetur malesuada, justo magna vehicula purus, sit amet commodo lectus neque vel lacus. Praesent venenatis enim mi. Phasellus semper bibendum commodo. Morbi leo risus, vestibulum id interdum interdum, euismod interdum est. ", likeCount: 88, picture: nil)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usersTableView.register(UINib(nibName: String(describing: SimpleTableViewCell.self), bundle: Bundle.main), forCellReuseIdentifier: String(describing: SimpleTableViewCell.self))
        
        usersTableView.register(UINib(nibName: String(describing: ImageTableViewCell.self), bundle: Bundle.main), forCellReuseIdentifier: String(describing: ImageTableViewCell.self))
        usersTableView.tableFooterView = UIView()
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        list[indexPath.row].hasPicture ? useImageTableViewCell(for: indexPath) : useSimpleTableViewCell(for: indexPath)
    }
    
    private func useSimpleTableViewCell(for indexPath: IndexPath) -> UITableViewCell {
        guard let cell = usersTableView.dequeueReusableCell(withIdentifier: String(describing: SimpleTableViewCell.self), for: indexPath) as? SimpleTableViewCell else { return UITableViewCell() }
        cell.fill(model: list[indexPath.row])
        return cell
    }
    
    private func useImageTableViewCell(for indexPath: IndexPath) -> UITableViewCell {
        guard let cell = usersTableView.dequeueReusableCell(withIdentifier: String(describing: ImageTableViewCell.self), for: indexPath) as? ImageTableViewCell else { return UITableViewCell() }
        cell.fill(model: list[indexPath.row])
        return cell
    }
    
}
