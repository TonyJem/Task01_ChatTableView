import UIKit

class SimpleTableViewCell: UITableViewCell {
    private struct Constants {
        static let backgrounColor = Colors.mainBackgroundColor
        
        static let containerViewCornerRadius: CGFloat = 15
        static let containerViewShadowOffset = CGSize(width: 5, height: 5)
        static let containerViewShadowOpacity: Float  = 0.2
        static let containerViewShadowRadius: CGFloat = 5
        
        static let userImageContainerViewShadowOffset = CGSize(width: 10, height: 10)
        static let userImageContainerViewShadowOpacity: Float = 0.4
        static let userImageContainerViewShadowRadius: CGFloat = 8
    }
    
    @IBOutlet var containerView: UIView!
    @IBOutlet var userImageContainerView: UIView!
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var separatorLineView: UIView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeCountLabel: UILabel!
    @IBOutlet var contentTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        separatorLineView.backgroundColor = Constants.backgrounColor
        backgroundColor = Constants.backgrounColor
        userImageView.roundCorners()
        
        containerView.roundCorners(radius: Constants.containerViewCornerRadius)
        containerView.setShadow(offsetSize: Constants.containerViewShadowOffset,
                                opacity: Constants.containerViewShadowOpacity,
                                radius: Constants.containerViewShadowRadius)
        
        userImageContainerView.roundCorners()
        userImageContainerView.setShadow(offsetSize: Constants.userImageContainerViewShadowOffset,
                                         opacity: Constants.userImageContainerViewShadowOpacity,
                                         radius: Constants.userImageContainerViewShadowRadius)
    }
    
    func fill(model: Message) {
        nameLabel.text = model.username
        userImageView.image = model.userPhoto
        contentTextLabel.text = model.text
        likeCountLabel.text = "\(model.likeCount ?? 0)"
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        dateLabel.text = dateFormatter.string(from: model.date)
    }
    
    //   нет обработки нажатия на лайках
    @IBAction func likeButtonTapped(_ sender: Any) {
    }
}
