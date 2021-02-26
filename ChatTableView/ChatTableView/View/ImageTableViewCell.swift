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
        postImageView.roundCornersAndClip(with: Constants.postImageViewCornerRadius)
    }
    
}

private extension ImageTableViewCell {
    
    func setupPostImageContainerUI() {
        postImageContainerView.setShadow(offsetSize: Constants.postImageContainerViewShadowOffset,
                                         opacity: Constants.postImageContainerViewShadowOpacity,
                                         radius: Constants.postImageContainerViewShadowRadius)
        postImageContainerView.roundCornersAndClip(with: Constants.postImageContainerViewCornerRadius)
    }
    
}
