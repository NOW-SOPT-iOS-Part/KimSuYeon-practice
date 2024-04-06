//
//  LoginViewController.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 3/30/24.
//

import Foundation
import UIKit

final class LoginViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x:69, y:161, width: 236, height: 88))
        label.text = "동네라서 가능한 모든 것\n당근에서 가까운 이웃과 함께해요."
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont.pretendardFont(weight: 700, size: 18)
        return label
    }()
    
    private let idTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 276, width: 335, height: 52))
        textField.layer.cornerRadius = 3
        textField.layer.masksToBounds = true
        textField.placeholder = "아이디를 입력해주세요"
        textField.font = UIFont.pretendardFont(weight: 600, size: 14)
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: textField.frame.height))
            textField.leftView = leftPaddingView
            textField.leftViewMode = .always
        return textField
    }()

    private let passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 335, width: 335, height: 52))
        textField.layer.cornerRadius = 3
        textField.layer.masksToBounds = true
        textField.placeholder = "비밀번호를 입력해주세요"
        textField.font = UIFont.pretendardFont(weight: 600, size: 14)
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: textField.frame.height))
            textField.leftView = leftPaddingView
            textField.leftViewMode = .always
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 21, y: 422, width: 332, height: 58))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.pretendardFont(weight: 700, size: 18)
        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    private lazy var backgroundSwitch: UISwitch = {
        let backgroundSwitch = UISwitch()
        backgroundSwitch.frame = CGRect(x: 20, y: 750, width: 0, height: 0)
        backgroundSwitch.isOn = false
        backgroundSwitch.onTintColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        backgroundSwitch.addTarget(self, action: #selector(backgroundChanged), for: .valueChanged)
        return backgroundSwitch
    }()
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            self.view.backgroundColor = .white
            setLayout()
    }
        
    private func setLayout() {
        [titleLabel, idTextField, passwordTextField, loginButton, backgroundSwitch].forEach {
            self.view.addSubview($0)
        }
    }
    
    private func presentToWelcomeVC() { //모달 방식
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.modalPresentationStyle = .formSheet
        welcomeViewController.id = idTextField.text
        self.present(welcomeViewController, animated: true)
    }
    
     private func pushToWelcomeVC() { //네비게이션 방식
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.id = idTextField.text
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
    @objc
    private func backgroundChanged(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = UIColor(red: 33/255, green: 33/255, blue: 35/255, alpha: 1)
            titleLabel.textColor = .white
        } else {
            self.view.backgroundColor = .white
            titleLabel.textColor = .black
        }
    }
    
    @objc
    private func loginButtonDidTap(){
        //presentToWelcomeVC()
        pushToWelcomeVC()
    }
}
