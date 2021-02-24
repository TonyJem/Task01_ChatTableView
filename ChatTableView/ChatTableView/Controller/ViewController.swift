import UIKit

class ViewController: UIViewController {

    @IBOutlet var usersTableView: UITableView!
    
//    TODO: testData
    let list: [User] = [
        User(name: "Test1", date: Date(), photo: UIImage(named: "avatar"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lacinia, risus at consectetur malesuada, justo magna vehicula purus, sit amet commodo lectus neque vel lacus. Praesent venenatis enim mi. Phasellus semper bibendum commodo. Morbi leo risus, vestibulum id interdum interdum, euismod interdum est. ", likeCount: 12, picture: nil),
        User(name: "Test2", date: Date(), photo: UIImage(named: "avatar"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lacinia, risus at consectetur malesuada, justo magna vehicula purus, sit amet commodo lectus neque vel lacus. Praesent venenatis enim mi. Phasellus semper bibendum commodo. Morbi leo risus, vestibulum id interdum interdum, euismod interdum est. ", likeCount: 12, picture: UIImage(named: "boxedwater")),
        User(name: "Test3", date: Date(), photo: UIImage(named: "avatar"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lacinia, risus at consectetur malesuada, justo magna vehicula purus, sit amet commodo lectus neque vel lacus. Praesent venenatis enim mi. Phasellus semper bibendum commodo. Morbi leo risus, vestibulum id interdum interdum, euismod interdum est. ", likeCount: 12, picture: nil)
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
        var cell = SimpleTableViewCell()
        
        if list[indexPath.row].picture != nil {
            
            guard let currentCell = usersTableView.dequeueReusableCell(withIdentifier: String(describing: ImageTableViewCell.self), for: indexPath) as? ImageTableViewCell else { return UITableViewCell() }
            cell = currentCell
            
        } else {
            guard let currentCell = usersTableView.dequeueReusableCell(withIdentifier: String(describing: SimpleTableViewCell.self), for: indexPath) as? SimpleTableViewCell else { return UITableViewCell() }
            cell = currentCell
        }
    
        
        cell.fill(model: list[indexPath.row])
        return cell
    }
}
