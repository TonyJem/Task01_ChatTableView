import UIKit

class ImageTableViewCell: SimpleTableViewCell {
    
    @IBOutlet private var postImageContainer: UIView!
    @IBOutlet private var postImageView: UIImageView!
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        setupPostImageContainer()
    }
    
    override func fill(model: User) {
        super.fill(model: model)
        
        postImageView.image = model.picture
        setupPostImageView()

    }
}

private extension ImageTableViewCell {
    
    func setupPostImageContainer() {
        postImageContainer.layer.cornerRadius = Constants.imageViewRadius
        postImageContainer.layer.shadowColor = Colors.shadowColor
        postImageContainer.layer.shadowOffset = CGSize(width: 5, height: 5)
        postImageContainer.layer.shadowRadius = 5
        postImageContainer.layer.shadowOpacity = 0.2
    }
    
    func setupPostImageView() {
        
        postImageView.layer.cornerRadius = Constants.imageViewRadius
        postImageView.clipsToBounds = true
    }
    
}
