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
    
    @IBOutlet private var userImageContainerView: UIView! {
        didSet {
            userImageContainerView.layer.cornerRadius = userImageContainerView.frame.width/2
            userImageContainerView.layer.shadowColor = UIColor.darkGray.cgColor
            userImageContainerView.layer.shadowOffset = CGSize(width: 10, height: 10)
            userImageContainerView.layer.shadowRadius = 8
            userImageContainerView.layer.shadowOpacity = 0.2
        }
    }
    
    @IBOutlet private var userImageView: UIImageView! {
        didSet {
            userImageView.layer.cornerRadius = userImageView.frame.width / 2
            userImageView.clipsToBounds = true
        }
    }
    
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var dateLabel: UILabel!
    @IBOutlet private var separatorLineView: UIView!
    @IBOutlet private var likeButton: UIButton!
    @IBOutlet private var likeCountLabel: UILabel!
    @IBOutlet private var contentTextLabel: UILabel!
    
    override func didMoveToSuperview() {
        separatorLineView.backgroundColor = UIColor(red: 239/255, green: 244/255, blue: 250/255, alpha: 1)
    }
    
    
    func fill(model: User) {
        userImageView.image = model.photo
        nameLabel.text = model.name
        likeCountLabel.text = "\(model.likeCount ?? 0)"
        contentTextLabel.text = model.text
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        dateLabel.text = dateFormatter.string(from: model.date)
    }
    
    @IBAction private func likeButtonTapped(_ sender: Any) {
    }
}
