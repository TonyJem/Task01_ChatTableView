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
        setupUserImageContainerView()
        setupSeparatorUI()
        setupUserImageViewView()
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
        containerView.layer.cornerRadius = Constants.containerRadius
        containerView.layer.masksToBounds = false
        containerView.layer.shadowRadius = 5
        containerView.layer.shadowOpacity = 0.1
        containerView.layer.shadowOffset = CGSize(width: 0, height: 0)
        containerView.layer.shadowColor = Colors.shadowColor
    }
    
    func setupUserImageContainerView() {
        userImageContainerView.layer.cornerRadius = userImageContainerView.frame.width/2
        userImageContainerView.layer.shadowColor = Colors.shadowColor
        userImageContainerView.layer.shadowOffset = CGSize(width: 10, height: 10)
        userImageContainerView.layer.shadowRadius = 8
        userImageContainerView.layer.shadowOpacity = 0.4
    }
    
    func setupSeparatorUI() {
        separatorLineView.backgroundColor = Colors.mainBackground
    }
    
    func setupUserImageViewView() {
        userImageView.layer.cornerRadius = userImageView.frame.width/2
        userImageView.clipsToBounds = true
    }
    
}
