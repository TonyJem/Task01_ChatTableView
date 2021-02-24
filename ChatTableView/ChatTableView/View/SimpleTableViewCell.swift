import UIKit

class SimpleTableViewCell: UITableViewCell {
    @IBOutlet var userImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeCountLabel: UILabel!
    @IBOutlet var contentTextLabel: UILabel!
   
    func fill(model: User) {
        userImageView.image = model.image
        nameLabel.text = model.name
        likeCountLabel.text = "\(model.likeCount ?? 0)"
        contentTextLabel.text = model.text
    }
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        print("🟢 Like Button Tapped")
    }
}
