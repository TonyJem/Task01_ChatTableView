import UIKit

class ImageTableViewCell: SimpleTableViewCell {
    
    @IBOutlet private var postImageContainerView: UIView!
    @IBOutlet private var postImageView: UIImageView!
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        setupPostImageContainerUI()
    }
    
    override func fill(model: User) {
        super.fill(model: model)
        
        postImageView.image = model.picture
        setupPostImageViewUI()
    }
    
}

private extension ImageTableViewCell {
    
    func setupPostImageContainerUI() {
        let layer = postImageContainerView.layer
        layer.cornerRadius = Constants.postImageContainerViewCornerRadius
        layer.shadowColor = Constants.postImageContainerViewShadowColor
        layer.shadowRadius = Constants.postImageContainerViewShadowRadius
        layer.shadowOpacity = Constants.postImageContainerViewShadowOpacity
        layer.shadowOffset = Constants.postImageContainerViewShadowOffset
    }
    
    func setupPostImageViewUI() {
        postImageView.layer.cornerRadius = Constants.postImageViewCornerRadius
        postImageView.clipsToBounds = true
    }
    
}
