//
//  ItemModel.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 4/20/24.
//

import Foundation
import UIKit

struct ItemModel {
    let itemImg: UIImage
    let name: String
    let price: String
    var heartIsSelected: Bool
}

extension ItemModel {
    static func dummy() -> [ItemModel] {
        return [
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: .item1, name: "류희재", price: "22000원", heartIsSelected: false)
        ]
    }
}
