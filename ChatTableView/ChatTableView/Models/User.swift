import UIKit

struct User {
    let name: String
    let date: Date
    let photo: UIImage?
    let text: String?
    let likeCount: Int?
    let picture: UIImage?
    
    var hasPicture: Bool {
        return picture != nil
    }
}
