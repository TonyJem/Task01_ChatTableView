import UIKit

class ImageTableViewCell: SimpleTableViewCell {
    
    @IBOutlet var postImageContainerView: UIView!
    @IBOutlet var postImageView: UIImageView!
    
    override func didMoveToSuperview() {
        //        TODO: код выносится в отдельные методы только для переиспользования. тут этого нет
        //        didMoveToSuperview - не работай именно в нем, предложи другие этапы жизненного цикла View
        super.didMoveToSuperview()
        
        setupPostImageContainerUI()
    }
    
    override func fill(model: Message) {
        super.fill(model: model)
        
        postImageView.image = model.picture
        postImageView.roundCorners(radius: Constants.postImageViewCornerRadius, clips: true)
    }
    
}

private extension ImageTableViewCell {
    
    func setupPostImageContainerUI() {
        postImageContainerView.setShadow(offsetSize: Constants.postImageContainerViewShadowOffset,
                                         opacity: Constants.postImageContainerViewShadowOpacity,
                                         radius: Constants.postImageContainerViewShadowRadius)
        postImageContainerView.roundCorners(radius: Constants.postImageContainerViewCornerRadius)
    }
    
}
