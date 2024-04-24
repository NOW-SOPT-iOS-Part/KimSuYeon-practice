//
//  ScrollViewController.swift
//  34th-Sopt-Seminar
//
//  Created by 예삐 on 4/6/24.
//

import Foundation
import UIKit

import SnapKit

final class ScrollViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    private var contentView = UIView()
    
    private let redView : UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    } ()
    
    private let orangeView : UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        return view
    } ()
    
    private let yellowView : UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    } ()
    
    private let greenView : UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    } ()
    
    private let blueView : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    } ()
    
    private let purpleView : UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    } ()
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            self.view.backgroundColor = .white
            setLayout()
    }
    
    private func setLayout() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        [redView, orangeView, yellowView, greenView, blueView, purpleView].forEach {
            contentView.addSubview($0)
        }

        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints {
            $0.edges.equalTo(scrollView)
            $0.width.equalTo(scrollView)
            $0.height.greaterThanOrEqualToSuperview().priority(.low)
        }
        
        redView.snp.makeConstraints {
            $0.top.equalTo(contentView)
            $0.leading.equalTo(contentView)
            $0.width.equalTo(UIScreen.main.bounds.size.width/2)
            $0.height.equalTo(UIScreen.main.bounds.size.height/3)
        }
        
        orangeView.snp.makeConstraints {
            $0.top.equalTo(contentView)
            $0.trailing.equalTo(contentView)
            $0.width.equalTo(UIScreen.main.bounds.size.width/2)
            $0.height.equalTo(UIScreen.main.bounds.size.height/3)
        }
        
        yellowView.snp.makeConstraints {
            $0.top.equalTo(redView.snp.bottom)
            $0.leading.equalTo(contentView)
            $0.width.equalTo(UIScreen.main.bounds.size.width/2)
            $0.height.equalTo(UIScreen.main.bounds.size.height/3)
        }
        
        greenView.snp.makeConstraints {
            $0.top.equalTo(orangeView.snp.bottom)
            $0.trailing.equalTo(contentView)
            $0.width.equalTo(UIScreen.main.bounds.size.width/2)
            $0.height.equalTo(UIScreen.main.bounds.size.height/3)
        }
        
        blueView.snp.makeConstraints {
            $0.top.equalTo(yellowView.snp.bottom)
            $0.leading.equalTo(contentView)
            $0.width.equalTo(UIScreen.main.bounds.size.width/2)
            $0.height.equalTo(UIScreen.main.bounds.size.height/3)
            $0.bottom.equalTo(contentView)
        }
        
        purpleView.snp.makeConstraints {
            $0.top.equalTo(greenView.snp.bottom)
            $0.trailing.equalTo(contentView)
            $0.width.equalTo(UIScreen.main.bounds.size.width/2)
            $0.height.equalTo(UIScreen.main.bounds.size.height/3)
            $0.bottom.equalTo(contentView)
        }
    }
    
}
