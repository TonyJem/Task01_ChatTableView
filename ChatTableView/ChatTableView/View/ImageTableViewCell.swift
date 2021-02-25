import UIKit

class ImageTableViewCell: SimpleTableViewCell {
    
    private struct Constants {
        static let pictureRadius: CGFloat = 10
    }
    
    @IBOutlet private var postImageContainer: UIView!
    @IBOutlet private var postImageView: UIImageView!
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        setupPostImage()
    }
    
    override func fill(model: User) {
        super.fill(model: model)
        
        postImageView.image = model.picture
        postImageView.layer.cornerRadius = Constants.pictureRadius
        postImageView.clipsToBounds = true
    }
}

private extension ImageTableViewCell {
    
    func setupPostImage() {
        postImageContainer.layer.cornerRadius = 10
        postImageContainer.layer.shadowColor = Colors.shadowColor
        postImageContainer.layer.shadowOffset = CGSize(width: 5, height: 5)
        postImageContainer.layer.shadowRadius = 5
        postImageContainer.layer.shadowOpacity = 0.2
    }
    
}
