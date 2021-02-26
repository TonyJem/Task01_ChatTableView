import UIKit

extension UIView {
    
    func roundCorners(with radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
    func roundCornersAndClip(with radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func turnIntoCircle() {
        self.layer.cornerRadius = self.frame.width/2
    }
    
    func turnIntoCircleAndClip() {
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
    }
    
    func setShadow(offsetSize: CGSize = CGSize(width: 5, height: 5),
                   color: CGColor = Colors.shadowColor,
                   opacity: Float = 0.4,
                   radius: CGFloat = 5)
    {
        let layer = self.layer
        
        layer.shadowOffset = offsetSize
        layer.shadowColor = color
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
        
        layer.masksToBounds = false
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
    }
    
}
