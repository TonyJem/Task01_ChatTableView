import UIKit

struct Constants {
    //    TODO: константы которые относятся к настройке определенного класс, должны быть внутри класса. В глобальных константах только то, что нужно проекту в глобальном плане.
    
// MARK: - ContainerViewUI
    static let containerViewCornerRadius: CGFloat = 15
    
    static let containerViewShadowOffset = CGSize(width: 5, height: 5)
    static let containerViewShadowOpacity: Float  = 0.2
    static let containerViewShadowRadius: CGFloat = 5

   
// MARK: - UserImageContainerViewUI
    static let userImageContainerViewShadowOffset = CGSize(width: 10, height: 10)
    static let userImageContainerViewShadowOpacity: Float = 0.4
    static let userImageContainerViewShadowRadius: CGFloat = 8
    
// MARK: - PostImageContainerViewUI
    static let postImageContainerViewCornerRadius: CGFloat = 10
    
    static let postImageContainerViewShadowOffset = CGSize(width: 5, height: 5)
    static let postImageContainerViewShadowOpacity: Float = 0.4
    static let postImageContainerViewShadowRadius: CGFloat = 5
    
    
    // MARK: - PostImageContainerViewUI
    static let postImageViewCornerRadius: CGFloat = Constants.postImageContainerViewCornerRadius
    
}
