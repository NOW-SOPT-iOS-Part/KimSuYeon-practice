//
//  LoginViewController_DelegatePattern.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 4/6/24.
//

import UIKit
import SnapKit

final class LoginViewController_DelegatePattern: UIViewController {
    
    private let rootView = LoginView_DelegatePattern()
        
    override func loadView() {
        self.view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        self.view.backgroundColor = .white
        setTarget()
    }
    
    private func setTarget() {
        rootView.loginButton.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        rootView.backgroundSwitch.addTarget(self, action: #selector(backgroundChanged), for: .valueChanged)
    }
    
    private func presentToWelcomeVC() { //모달 방식
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.modalPresentationStyle = .formSheet
        welcomeViewController.id = rootView.idTextField.text
        self.present(welcomeViewController, animated: true)
    }
    
    private func pushToWelcomeVC() { //네비게이션 방식
         let welcomeViewController = WelcomeViewController_DelegatePattern()
         welcomeViewController.delegate = self
         welcomeViewController.id = rootView.idTextField.text
         self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
    @objc
    private func backgroundChanged(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = UIColor(red: 33/255, green: 33/255, blue: 35/255, alpha: 1)
            rootView.titleLabel.textColor = .white
        } else {
            self.view.backgroundColor = .white
            rootView.titleLabel.textColor = .black
        }
    }
    
    @objc
    private func loginButtonDidTap(){
        //presentToWelcomeVC()
        pushToWelcomeVC()
    }
}

extension LoginViewController_DelegatePattern: DataBindProtocol {
    func dataBind(id: String?) {
        if let id = id {
            rootView.idTextField.text = "\(id)에서 어떤걸로 할 거야?"
        }
    }
}
