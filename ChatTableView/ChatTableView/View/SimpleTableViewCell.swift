import UIKit

class SimpleTableViewCell: UITableViewCell {
    
    @IBOutlet private var containerView: UIView! {
        didSet {
            backgroundColor = UIColor(red: 239/255, green: 244/255, blue: 250/255, alpha: 1)
            containerView.layer.cornerRadius = 15
            containerView.clipsToBounds = true
            containerView.layer.masksToBounds = false
            containerView.layer.shadowRadius = 5
            containerView.layer.shadowOpacity = 0.1
            containerView.layer.shadowOffset = CGSize(width: 0, height: 0)
            containerView.layer.shadowColor = UIColor.gray.cgColor
        }
    }
    
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeCountLabel: UILabel!
    @IBOutlet var contentTextLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func fill(model: User) {
        userImageView.image = model.photo
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
        userImageView.clipsToBounds = true
        
        nameLabel.text = model.name
        likeCountLabel.text = "\(model.likeCount ?? 0)"
        contentTextLabel.text = model.text
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        dateLabel.text = dateFormatter.string(from: model.date)
    }
    
    @IBAction func likeButtonTapped(_ sender: Any) {
//    TODO: Button tap test
        print("🟢 Like Button Tapped")
    }
}
