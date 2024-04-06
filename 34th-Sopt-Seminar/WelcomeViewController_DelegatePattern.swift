//
//  WelcomeViewController_DelegatePattern.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 4/6/24.
//

import Foundation
import UIKit

protocol DataBindProtocol: AnyObject {
    func dataBind(id: String?)
}

final class WelcomeViewController_DelegatePattern: UIViewController {
    
    weak var delegate: DataBindProtocol?
    
    private let logoImageView: UIImageView = {
            let imageView = UIImageView(frame: CGRect(x: 112, y: 87, width: 150, height: 150))
            imageView.image = UIImage(named: "logo2")
            return imageView
        }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 140, y: 295, width: 95, height: 60))
        //label.text = "???님\n반가워요!"
        label.font = UIFont.pretendardFont(weight: 800, size: 25)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var goHomeButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 426, width: 335, height: 58))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.pretendardFont(weight: 700, size: 18)
        return button
    }()
    
    private lazy var backToLoginButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 20, y: 498, width: 335, height: 58))
            button.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
            button.layer.cornerRadius = 6
            button.layer.masksToBounds = true
            button.setTitle("로그인하기", for: .normal)
            button.setTitleColor(UIColor(red: 172/255, green: 176/255, blue: 185/255, alpha: 1), for: .normal)
            button.titleLabel?.font = UIFont.pretendardFont(weight: 700, size: 18)
            button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
            return button
        }()
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            self.view.backgroundColor = .white
            setLayout()
        
            bindID()
        }
        
        private func setLayout() {
            [logoImageView, welcomeLabel, goHomeButton, backToLoginButton].forEach {
                //$0.translatesAutoresizingMaskIntoConstraints = false
                self.view.addSubview($0)
            }
        }
    
    @objc
    private func backToLoginButtonDidTap() {
        if let id = id {
            delegate?.dataBind(id: id)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    var id: String?

    private func bindID() { //guard let 방식의 옵셔널 바인딩
        guard let idText = id else { return }
        self.welcomeLabel.text = "\(idText)님 \n반가워요!"
    }
    
}
