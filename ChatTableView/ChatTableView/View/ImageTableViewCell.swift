import UIKit

class ImageTableViewCell: SimpleTableViewCell {
    private struct Constants {
        static let pictureRadius: CGFloat = 10
    }
    
    @IBOutlet var bottomImageView: UIImageView!
    
    override func fill(model: User) {
        super.fill(model: model)
        
        bottomImageView.image = model.picture
        bottomImageView.layer.cornerRadius = Constants.pictureRadius
    }
}
