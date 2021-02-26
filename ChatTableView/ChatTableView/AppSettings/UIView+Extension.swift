import UIKit

extension UIView {
    
    func setCorrnerRadiusAndClip(with radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func turnIntoCircle() {
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
    }
    
}
