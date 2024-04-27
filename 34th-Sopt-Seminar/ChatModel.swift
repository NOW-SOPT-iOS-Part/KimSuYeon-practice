//
//  ChatModel.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 4/20/24.
//

import UIKit

struct ChatModel {
    let profileImg: UIImage
    let name: String
    let place: String
    let message: String
    let itemImg: UIImage
}

extension ChatModel {
    static func dummy() -> [ChatModel] {
        return [
            ChatModel(profileImg: .profile1, name: "류희재", place: "성북구", message: "땡큐", itemImg: .product1),
            ChatModel(profileImg: .profile2, name: "윤희슬", place: "여의도", message: "안녕", itemImg: .product2),
            ChatModel(profileImg: .profile3, name: "김가현", place: "잠실", message: "아요", itemImg: .product3),
            ChatModel(profileImg: .profile4, name: "김선우", place: "회기", message: "너무 좋아요", itemImg: .product4),
            ChatModel(profileImg: .profile5, name: "김나연", place: "미국", message: "뿅", itemImg: .product5),
            ChatModel(profileImg: .profile1, name: "김민서", place: "중국", message: "뿡", itemImg: .product6),
            ChatModel(profileImg: .profile2, name: "김수연", place: "일본", message: "자기야 미안해 했자나", itemImg: .product7),
            ChatModel(profileImg: .profile3, name: "한지석", place: "태국", message: "솝트 이딴거 안했어", itemImg: .product8),
            ChatModel(profileImg: .profile4, name: "한정원", place: "명왕성", message: "진짜?", itemImg: .product9),
            ChatModel(profileImg: .profile5, name: "이지훈", place: "안드로메다", message: "난이서~", itemImg: .product10)
        ]
    }
}
