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
        nameLabel.text = model.name
        userImageView.image = model.photo
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
        let layer = containerView.layer
        layer.cornerRadius = Constants.containerViewCornerRadius
        layer.masksToBounds = Constants.containerViewMasksToBounds
        layer.shadowColor = Constants.containerViewShadowColor
        layer.shadowRadius = Constants.containerViewShadowRadius
        layer.shadowOpacity = Constants.containerViewShadowOpacity
        layer.shadowOffset = Constants.containerViewShadowOffset
    }
    
    func setupUserImageContainerViewUI() {
        let layer = userImageContainerView.layer
        layer.cornerRadius = userImageContainerView.frame.width/2
        layer.shadowColor = Constants.userImageContainerViewShadowColor
        layer.shadowRadius = Constants.userImageContainerViewShadowRadius
        layer.shadowOpacity = Constants.userImageContainerViewShadowOpacity
        layer.shadowOffset = Constants.userImageContainerViewShadowOffset
    }
    
    func setupSeparatorUI() {
        separatorLineView.backgroundColor = Colors.mainBackground
    }
    
    func setupUserImageViewViewUI() {
        userImageView.layer.cornerRadius = userImageView.frame.width/2
        userImageView.clipsToBounds = true
    }
    
}
