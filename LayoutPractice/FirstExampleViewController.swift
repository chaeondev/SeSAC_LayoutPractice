//
//  FirstExampleViewController.swift
//  LayoutPractice
//
//  Created by ChaewonMac on 2023/08/22.
//

import UIKit
import SnapKit

class FirstExampleViewController: UIViewController {
    
    let imageView = {
        let view = UIImageView()
        view.backgroundColor = .lightGray
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let titleTextField = {
        let view = UITextField()
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.placeholder = "제목을 입력해주세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        return view
    }()
    
    let dateTextField = {
        let view = UITextField()
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.placeholder = "날짜을 입력해주세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        return view
    }()
    
    let textLabel = {
        let view = UILabel()
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.text = ""
        view.numberOfLines = 0
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        view.addSubview(imageView)
        view.addSubview(titleTextField)
        view.addSubview(dateTextField)
        view.addSubview(textLabel)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.equalTo(view).offset(20)
            make.horizontalEdges.equalTo(view).inset(20)
            make.height.equalTo(view).multipliedBy(0.35)
        }
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(view).inset(20)
            make.height.equalTo(50)
        }
        
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(view).inset(20)
            make.height.equalTo(50)
        }
        
        textLabel.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(view).inset(20)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(8)
        }
    }

   

}
