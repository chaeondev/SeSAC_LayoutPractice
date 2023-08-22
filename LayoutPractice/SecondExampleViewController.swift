//
//  SecondExampleViewController.swift
//  LayoutPractice
//
//  Created by ChaewonMac on 2023/08/22.
//

import UIKit
import SnapKit

class SecondExampleViewController: UIViewController {
    
    let backgroundImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.image = UIImage(named: "lalaland")
        return view
    }()
    
    let profileImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.image = UIImage(named: "mini")
        view.layer.cornerRadius = 40
        view.clipsToBounds = true
        return view
    }()
    
    let nameLabel = {
        let view = UILabel()
        view.text = "Danna"
        view.textColor = .white
        view.font = .boldSystemFont(ofSize: 18)
        return view
    }()
    
    let lineView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let chatButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "bubble.left.fill"), for: .normal)
        view.tintColor = .white
        view.contentVerticalAlignment = .fill
        view.contentHorizontalAlignment = .fill
        view.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        return view
    }()
    
    let chatLabel = {
        let view = UILabel()
        view.text = "나와의 채팅"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 14, weight: .semibold)
        
        return view
    }()
    
    let editProfileButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "pencil.and.outline"), for: .normal)
        view.tintColor = .white
        view.contentVerticalAlignment = .fill
        view.contentHorizontalAlignment = .fill
        view.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return view
    }()
    
    let editProfileLabel = {
        let view = UILabel()
        view.text = "프로필 편집"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 14, weight: .semibold)
        return view
    }()
    
    let kakaoStoryButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "book.circle.fill"), for: .normal)
        view.tintColor = .white
        view.contentVerticalAlignment = .fill
        view.contentHorizontalAlignment = .fill
        view.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return view
    }()
    
    let kakaoStoryLabel = {
        let view = UILabel()
        view.text = "카카오스토리"
        view.textColor = .white
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 14, weight: .semibold)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkGray
        view.addSubview(backgroundImageView)
        view.addSubview(profileImageView)
        view.addSubview(nameLabel)
        view.addSubview(lineView)
        view.addSubview(chatButton)
        view.addSubview(chatLabel)
        view.addSubview(editProfileButton)
        view.addSubview(editProfileLabel)
        view.addSubview(kakaoStoryButton)
        view.addSubview(kakaoStoryLabel)
        
        setupConstraints()
    }
    

    func setupConstraints() {
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        
        profileImageView.snp.makeConstraints { make in
            make.bottomMargin.equalTo(-230)
            make.size.equalTo(120)
            make.centerX.equalTo(view)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(8)
            make.centerX.equalTo(view)
        }
        
        lineView.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(40)
            make.horizontalEdges.equalTo(view)
            make.height.equalTo(1)
        }
        
        chatButton.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(30)
            make.leadingMargin.equalTo(80)
            make.size.equalTo(30)
        }
        
        chatLabel.snp.makeConstraints { make in
            make.top.equalTo(chatButton.snp.bottom).offset(12)
            make.centerX.equalTo(chatButton.snp.centerX)
        }
        
        editProfileButton.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(30)
            make.centerX.equalTo(profileImageView.snp.centerX)
            make.size.equalTo(30)
        }
        
        editProfileLabel.snp.makeConstraints { make in
            make.top.equalTo(editProfileButton.snp.bottom).offset(12)
            make.centerX.equalTo(editProfileButton.snp.centerX)
        }
        
        kakaoStoryButton.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(30)
            make.trailingMargin.equalTo(-80)
            make.size.equalTo(30)
        }
        
        kakaoStoryLabel.snp.makeConstraints { make in
            make.top.equalTo(kakaoStoryButton.snp.bottom).offset(12)
            make.centerX.equalTo(kakaoStoryButton.snp.centerX)
        }
    }
    

}
