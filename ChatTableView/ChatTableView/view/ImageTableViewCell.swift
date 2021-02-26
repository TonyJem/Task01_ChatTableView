import UIKit

class ImageTableViewCell: SimpleTableViewCell {
    private struct Constants {
        static let postImageContainerViewCornerRadius: CGFloat = 10
        static let postImageContainerViewShadowOffset = CGSize(width: 5, height: 5)
        static let postImageContainerViewShadowOpacity: Float = 0.4
        static let postImageContainerViewShadowRadius: CGFloat = 5
        static let postImageViewCornerRadius: CGFloat = Constants.postImageContainerViewCornerRadius
    }
    
    @IBOutlet var postImageContainerView: UIView!
    @IBOutlet var postImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImageContainerView.roundCorners(radius: Constants.postImageContainerViewCornerRadius)
        postImageContainerView.setShadow(offsetSize: Constants.postImageContainerViewShadowOffset,
                                         opacity: Constants.postImageContainerViewShadowOpacity,
                                         radius: Constants.postImageContainerViewShadowRadius)
    }
    
    override func fill(model: Message) {
        super.fill(model: model)
        
        postImageView.image = model.picture
        postImageView.roundCorners(radius: Constants.postImageViewCornerRadius, clips: true)
    }
    
}
