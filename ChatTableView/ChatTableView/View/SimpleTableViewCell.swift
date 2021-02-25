import UIKit

class SimpleTableViewCell: UITableViewCell {
    
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
        
        setupCellUI()
        setupContainerViewUI()
        setupUserImageContainerViewUI()
        setupSeparatorUI()
        setupUserImageViewViewUI()
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

private extension SimpleTableViewCell {
    
    func setupCellUI() {
        self.backgroundColor = Colors.mainBackground
    }

    func setupContainerViewUI() {
        containerView.layer.cornerRadius = Constants.containerViewCornerRadius
        containerView.layer.masksToBounds = Constants.containerViewMasksToBounds
        containerView.layer.shadowColor = Constants.containerViewShadowColor
        containerView.layer.shadowRadius = Constants.containerViewShadowRadius
        containerView.layer.shadowOpacity = Constants.containerViewShadowOpacity
        containerView.layer.shadowOffset = Constants.containerViewShadowOffset
    }
    
    func setupUserImageContainerViewUI() {
        userImageContainerView.layer.cornerRadius = userImageContainerView.frame.width/2
        userImageContainerView.layer.shadowColor = Constants.userImageContainerViewShadowColor
        userImageContainerView.layer.shadowRadius = Constants.userImageContainerViewShadowRadius
        userImageContainerView.layer.shadowOpacity = Constants.userImageContainerViewShadowOpacity
        userImageContainerView.layer.shadowOffset = Constants.userImageContainerViewShadowOffset
    }
    
    func setupSeparatorUI() {
        separatorLineView.backgroundColor = Colors.mainBackground
    }
    
    func setupUserImageViewViewUI() {
        userImageView.layer.cornerRadius = userImageView.frame.width/2
        userImageView.clipsToBounds = true
    }
    
}
