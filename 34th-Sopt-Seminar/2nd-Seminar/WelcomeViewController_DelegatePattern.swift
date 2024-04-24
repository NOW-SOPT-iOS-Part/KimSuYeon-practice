//
//  WelcomeViewController_DelegatePattern.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 4/6/24.
//

import UIKit
import SnapKit

protocol DataBindProtocol: AnyObject {
    func dataBind(id: String?)
}

final class WelcomeViewController_DelegatePattern: UIViewController {
    
    private let rootView = WelcomeView_DelegatePattern()
    
    override func loadView() {
        self.view = rootView
    }
    
    weak var delegate: DataBindProtocol?
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            self.view.backgroundColor = .white
            setTarget()
        
            bindID()
    }
    
    func setTarget() {
        rootView.backToLoginButton.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
    }
    
    var id: String?

    private func bindID() { //guard let 방식의 옵셔널 바인딩
        guard let idText = id else { return }
        rootView.welcomeLabel.text = "\(idText)님 \n반가워요!"
    }
    
    @objc
    private func backToLoginButtonDidTap() {
        if let id = id {
            delegate?.dataBind(id: id)
        }
        self.navigationController?.popViewController(animated: true)
    }
}
