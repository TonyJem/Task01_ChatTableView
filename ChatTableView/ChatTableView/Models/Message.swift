import UIKit

struct Message {
    let username: String
    let date: Date
    let userPhoto: UIImage?
    let text: String?
    let likeCount: Int?
    let picture: UIImage?
    
    var hasPicture: Bool {
        return picture != nil
    }
}
