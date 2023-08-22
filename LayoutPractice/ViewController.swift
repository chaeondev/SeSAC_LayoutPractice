//
//  ViewController.swift
//  LayoutPractice
//
//  Created by ChaewonMac on 2023/08/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let firstButton = {
        let view = UIButton()
        view.backgroundColor = .systemRed
        view.setTitle("Example 1", for: .normal)
        return view
    }()
    
    let secondButton = {
        let view = UIButton()
        view.backgroundColor = .systemBlue
        view.setTitle("Example 2", for: .normal)
        return view
    }()
    
    let thirdButton = {
        let view = UIButton()
        view.backgroundColor = .systemGreen
        view.setTitle("Example 3", for: .normal)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        view.addSubview(thirdButton)

        setupConstraints()
        
        firstButton.addTarget(self, action: #selector(firstButtonClicked), for: .touchUpInside)
        secondButton.addTarget(self, action: #selector(secondButtonClicked), for: .touchUpInside)
        thirdButton.addTarget(self, action: #selector(thirdButtonClicked), for: .touchUpInside)
        
    }
    
    @objc func firstButtonClicked() {
        let vc = FirstExampleViewController()
        present(vc, animated: true)
    }
    
    @objc func secondButtonClicked() {
        let vc = SecondExampleViewController()
        present(vc, animated: true)
    }
    
    @objc func thirdButtonClicked() {
        let vc = ThirdExampleViewController()
        present(vc, animated: true)
    }
    
    func setupConstraints() {
        firstButton.snp.makeConstraints { make in
            make.topMargin.equalTo(100)
            make.horizontalEdges.equalTo(view)
            make.height.equalTo(100)
        }
        
        secondButton.snp.makeConstraints { make in
            make.top.equalTo(firstButton.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(view)
            make.height.equalTo(100)
        }
        
        thirdButton.snp.makeConstraints { make in
            make.top.equalTo(secondButton.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(view)
            make.height.equalTo(100)
        }
    }


}

