import UIKit

extension UIView {
    /*    TODO:
         1. 4ре нижних метода - избыточный код. По сути я могу заменить их все на
         func roundCorners(radius: CGFloat, clips: Bool? = nil) {
                 self.layer.cornerRadius = radius
                 if clips != nil {
                    self.clipsToBounds = clips
                }
             }
         2. func roundCorners(with radius: CGFloat) { == with это не внешнее имя radius
        */
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
    
    //    TODO: 1. перенос на новую строку только если не влазит
    //    2. let layer = self.layer не нужно выделять переменную работай напрямую с self.layer
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
