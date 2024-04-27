//
//  ChatTableView.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 4/20/24.
//

import Foundation
import UIKit

final class ChatTableViewConroller : UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x:69, y:161, width: 236, height: 88))
        label.text = "채팅"
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont(name: "Pretendard-Bold", size: 18)
        return label
    }()
}
