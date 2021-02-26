import UIKit

class SimpleTableViewCell: UITableViewCell {
    //    TODO: не делай Outlet private
    @IBOutlet private var containerView: UIView!
    @IBOutlet private var userImageContainerView: UIView!
    @IBOutlet private var userImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var dateLabel: UILabel!
    @IBOutlet private var separatorLineView: UIView!
    @IBOutlet private var likeButton: UIButton!
    @IBOutlet private var likeCountLabel: UILabel!
    @IBOutlet private var contentTextLabel: UILabel!
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        //        TODO: код выносится в отдельные методы только для переиспользования. тут этого нет
        //        didMoveToSuperview - не работай именно в нем, предложи другие этапы жизненного цикла View
        setupCellUI()
        setupContainerViewUI()
        setupUserImageContainerViewUI()
        setupSeparatorUI()
        userImageView.turnIntoCircle()
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
    
    @IBAction private func likeButtonTapped(_ sender: Any) {
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
        containerView.roundCorners(with: Constants.containerViewCornerRadius)
    }
    
    func setupUserImageContainerViewUI() {
        userImageContainerView.setShadow(offsetSize: Constants.userImageContainerViewShadowOffset,
                                opacity: Constants.userImageContainerViewShadowOpacity,
                                radius: Constants.userImageContainerViewShadowRadius)
        userImageContainerView.turnIntoCircle()
    }
    
    func setupSeparatorUI() {
        separatorLineView.backgroundColor = Colors.mainBackground
    }
    
}
