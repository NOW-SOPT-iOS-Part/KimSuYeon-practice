//
//  WelcomeView_DelegatePattern.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 4/24/24.
//

import UIKit
import SnapKit

final class WelcomeView_DelegatePattern: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
            
        setLayout()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
            imageView.image = UIImage(named: "logo2")
            return imageView
        }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel(frame: .zero)
        //label.text = "???님\n반가워요!"
        label.font = UIFont.pretendardFont(weight: 800, size: 25)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    lazy var goHomeButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.pretendardFont(weight: 700, size: 18)
        return button
    }()
    
    lazy var backToLoginButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(UIColor(red: 172/255, green: 176/255, blue: 185/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.pretendardFont(weight: 700, size: 18)
        //button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    private func setLayout() {
        [logoImageView, welcomeLabel, goHomeButton, backToLoginButton].forEach {
            self.addSubview($0)
        }
        
        logoImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(87)
            $0.centerX.equalToSuperview()
            $0.height.width.equalTo(150)
        }
        welcomeLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(295)
            $0.centerX.equalToSuperview()
        }
        goHomeButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(426)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(58)
        }
        backToLoginButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(498)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(58)
        }
    }
}
