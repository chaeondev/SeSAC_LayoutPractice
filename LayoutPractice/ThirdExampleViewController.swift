//
//  ThirdExampleViewController.swift
//  LayoutPractice
//
//  Created by ChaewonMac on 2023/08/22.
//

import UIKit
import SnapKit

class ThirdExampleViewController: UIViewController {
    
    let backImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.image = UIImage(named: "layoutBackground")
        return view
    }()
    
    let dateLabel = {
        let view = UILabel()
        view.text = "10월 24일 09시 42분"
        view.font = .systemFont(ofSize: 15)
        view.textColor = .white
        return view
    }()
    
    let locationIconImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.image = UIImage(systemName: "location.fill")
        view.tintColor = .white
        return view
    }()
    
    let locationLabel = {
        let view = UILabel()
        view.text = "서울, 신림동"
        view.font = .boldSystemFont(ofSize: 20)
        view.textColor = .white
        return view
    }()
    
    let sendButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let resetButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "arrow.clockwise"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let temperatureLabel = {
        let view = UILabel()
        view.text = "지금은 9°C 에요"
        view.backgroundColor = .white
        view.textColor = .black
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        view.font = .boldSystemFont(ofSize: 18)
        return view
    }()
    
    let humidLabel = {
        let view = UILabel()
        view.text = "78% 만큼 습해요"
        view.backgroundColor = .white
        view.textColor = .black
        view.layer.cornerRadius = 10
        view.font = .boldSystemFont(ofSize: 18)
        return view
    }()
    
    let windLabel = {
        let view = UILabel()
        view.text = "1m/s의 바람이 불어요"
        view.backgroundColor = .white
        view.textColor = .black
        view.layer.cornerRadius = 10
        view.font = .boldSystemFont(ofSize: 18)
        return view
    }()
    
    let cloudImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "cloud")
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let endingLabel = {
        let view = UILabel()
        view.text = "오늘도 행복한 하루 보내세요"
        view.backgroundColor = .white
        view.textColor = .black
        view.layer.cornerRadius = 10
        view.font = .boldSystemFont(ofSize: 18)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        let views = [backImageView, dateLabel, locationIconImageView, locationLabel, sendButton, resetButton, temperatureLabel, humidLabel, windLabel, cloudImageView, endingLabel]
        views.forEach {
                    view.addSubview($0)
                }
        setupConstraints()
        
    }
    

    func setupConstraints() {
        
        backImageView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        
        dateLabel.snp.makeConstraints { make in
            make.top.leading.equalTo(view.safeAreaLayoutGuide).offset(40)
        }
        
        locationIconImageView.snp.makeConstraints { make in
            make.top.equalTo(dateLabel.snp.bottom).offset(16)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(40)
            make.size.equalTo(30)
        }
        
        locationLabel.snp.makeConstraints { make in
            make.top.equalTo(dateLabel.snp.bottom).offset(16)
            make.leading.equalTo(locationIconImageView.snp.trailing).offset(16)
        }
        
        resetButton.snp.makeConstraints { make in
            make.trailingMargin.equalTo(-25)
            make.centerY.equalTo(locationLabel.snp.centerY)
            make.size.equalTo(20)
        }
        sendButton.snp.makeConstraints { make in
            make.trailing.equalTo(resetButton.snp.leading).offset(-25)
            make.centerY.equalTo(locationLabel.snp.centerY)
            make.size.equalTo(20)
        }
        
        temperatureLabel.snp.makeConstraints { make in
            make.top.equalTo(locationLabel.snp.bottom).offset(16)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(40)
        }
    }
    
}
