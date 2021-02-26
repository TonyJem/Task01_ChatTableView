import UIKit

class ImageTableViewCell: SimpleTableViewCell {
    
    @IBOutlet var postImageContainerView: UIView!
    @IBOutlet var postImageView: UIImageView!
    
    override func didMoveToSuperview() {
        
        //        didMoveToSuperview - не работай именно в нем, предложи другие этапы жизненного цикла View
        super.didMoveToSuperview()
        
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
