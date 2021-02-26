import UIKit

class SimpleTableViewCell: UITableViewCell {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet var userImageContainerView: UIView!
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var separatorLineView: UIView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeCountLabel: UILabel!
    @IBOutlet var contentTextLabel: UILabel!
    
    //        didMoveToSuperview - не работай именно в нем, предложи другие этапы жизненного цикла View
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        backgroundColor = Colors.mainBackground
        separatorLineView.backgroundColor = Colors.mainBackground
        userImageView.roundCorners()
        
        containerView.setShadow(offsetSize: Constants.containerViewShadowOffset,
                                opacity: Constants.containerViewShadowOpacity,
                                radius: Constants.containerViewShadowRadius)
        containerView.roundCorners(radius: Constants.containerViewCornerRadius)
        
        userImageContainerView.setShadow(offsetSize: Constants.userImageContainerViewShadowOffset,
                                opacity: Constants.userImageContainerViewShadowOpacity,
                                radius: Constants.userImageContainerViewShadowRadius)
        userImageContainerView.roundCorners()
        
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
