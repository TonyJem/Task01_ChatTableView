import UIKit

struct Message {
    let username: String
    let date: Date
    let userPhoto: UIImage?
    let text: String?
    var likeCount: Int
    var isAlreadyLiked: Bool
    let picture: UIImage?
}

class MessageModel {
    
    //    TODO: testData
    var messages = [
        Message(username: "Test1", date: Date(), userPhoto: UIImage(named: "avatar"), text: "Lorem ipsum", likeCount: 11, isAlreadyLiked: false, picture: nil),
        Message(username: "Test2", date: Date(), userPhoto: UIImage(named: "avatar"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lacinia, risus at consectetur malesuada, justo magna vehicula purus, sit amet commodo lectus neque vel lacus. Praesent venenatis enim mi. Phasellus semper bibendum commodo. Morbi leo risus, vestibulum id interdum interdum, euismod interdum est. ", likeCount: 22, isAlreadyLiked: true, picture: UIImage(named: "boxedwater")),
        Message(username: "Test3", date: Date(), userPhoto: UIImage(named: "avatar"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lacinia, risus at consectetur malesuada, justo magna vehicula purus, sit amet commodo lectus neque vel lacus. Praesent venenatis enim mi. Phasellus semper bibendum commodo. Morbi leo risus, vestibulum id interdum interdum, euismod interdum est. ", likeCount: 88, isAlreadyLiked: true, picture: nil),
        Message(username: "Shreya", date: Date(), userPhoto: UIImage(named: "Shreya Nithin"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", likeCount: 69, isAlreadyLiked: false, picture: UIImage(named: "Beach and Palm Tree")),
        Message(username: "Kim", date: Date(), userPhoto: UIImage(named: "Kim Yu"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", likeCount: 18, isAlreadyLiked: true, picture: nil),
        Message(username: "Derek", date: Date(), userPhoto: UIImage(named: "Derek Fowler"), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", likeCount: 54, isAlreadyLiked: false, picture: nil)
    ]
    
    func updateLikeCount(at index: Int) {
        if messages[index].isAlreadyLiked {
            messages[index].likeCount -= 1
        } else {
            messages[index].likeCount += 1
        }
        messages[index].isAlreadyLiked = !messages[index].isAlreadyLiked
    }
}
