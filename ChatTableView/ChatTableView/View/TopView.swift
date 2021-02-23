import UIKit

class TopView: UIView {
    
    @IBOutlet var userImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeCountLabel: UILabel!
    @IBOutlet var textLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func fill(model: User) {
        userImageView.image = model.image
        nameLabel.text = model.name
        likeCountLabel.text = "\(model.likeCount ?? 0)"
        textLabel.text = model.text
    }
    
    @IBAction func likButtonTapped(_ sender: Any) {
    }
}

private extension TopView {
    func commonInit() {
        guard let view = Bundle.main.loadNibNamed(String(describing: TopView.self),
                                                  owner: self,
                                                  options: nil)?.first as? UIView else { return }
        view.frame = self.bounds
        addSubview(view)
    }
}
