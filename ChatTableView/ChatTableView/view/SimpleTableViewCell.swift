import UIKit

class SimpleTableViewCell: UITableViewCell {
    //    TODO: не делай Outlet private
    @IBOutlet var containerView: UIView!
    @IBOutlet var userImageContainerView: UIView!
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var separatorLineView: UIView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeCountLabel: UILabel!
    @IBOutlet var contentTextLabel: UILabel!
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        //        TODO: код выносится в отдельные методы только для переиспользования. тут этого нет
        //        didMoveToSuperview - не работай именно в нем, предложи другие этапы жизненного цикла View
        setupCellUI()
        setupContainerViewUI()
        setupUserImageContainerViewUI()
        setupSeparatorUI()
        userImageView.roundCorners()
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
    
    @IBAction func likeButtonTapped(_ sender: Any) {
    }
}

private extension SimpleTableViewCell {
    
    func setupCellUI() {
        self.backgroundColor = Colors.mainBackground
    }
    
    func setupContainerViewUI() {
        containerView.setShadow(offsetSize: Constants.containerViewShadowOffset,
                                opacity: Constants.containerViewShadowOpacity,
                                radius: Constants.containerViewShadowRadius)
        containerView.roundCorners(radius: Constants.containerViewCornerRadius)
    }
    
    func setupUserImageContainerViewUI() {
        userImageContainerView.setShadow(offsetSize: Constants.userImageContainerViewShadowOffset,
                                opacity: Constants.userImageContainerViewShadowOpacity,
                                radius: Constants.userImageContainerViewShadowRadius)
        userImageContainerView.roundCorners()
    }
    
    func setupSeparatorUI() {
        separatorLineView.backgroundColor = Colors.mainBackground
    }
    
}
