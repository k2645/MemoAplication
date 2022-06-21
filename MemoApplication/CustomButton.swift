//
//  CustomButton_02.swift
//  MemoApplication
//
//  Created by 김영현 on 2022/06/15.
//

import UIKit

class CustomButton: UIButton {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    
        let buttonImg = UIImage(systemName: "note")?.withTintColor(.systemOrange, renderingMode: .alwaysOriginal) // image의 색상을 변경 (rendering 모드 필!수!)
        let arrowImg = UIImage(systemName: "chevron.right")?.withTintColor(.lightGray, renderingMode: .alwaysOriginal)
        
        self.layer.cornerRadius = 10 // 버튼의 coner 원형상태로
        self.setImages(right: buttonImg, left: arrowImg)
        self.setTitle("빠른 메모", for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.configuration?.imagePadding = 15 // button 내의 image와 title 사이 간격
        
    }
    
    func setImages(right: UIImage? = nil, left: UIImage? = nil) { // button에 2개 image추가하는 func
        if let leftImage = left, right == nil {
            setImage(leftImage, for: .normal)
            imageEdgeInsets = UIEdgeInsets(top: 5, left: (bounds.width - 35), bottom: 5, right: 5)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: (imageView?.frame.width)!)
            contentHorizontalAlignment = .left
        }
        if let rightImage = right, left == nil {
            setImage(rightImage, for: .normal)
            imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: (bounds.width - 35))
            titleEdgeInsets = UIEdgeInsets(top: 0, left: (imageView?.frame.width)!, bottom: 0, right: 10)
            contentHorizontalAlignment = .right
        }

        if let rightImage = right, let leftImage = left { // button에 기본으로 추가할 수 있는 image수는 1개이고 그 이상 추가하고 싶으면 이 함수와 같이 imageview를 따로 추가해야하는 것 같다.
            setImage(rightImage, for: .normal)
            imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: (bounds.width - 35))
            titleEdgeInsets = UIEdgeInsets(top: 0, left: (imageView?.frame.width)!, bottom: 0, right: 10)
            contentHorizontalAlignment = .left

            let leftImageView = UIImageView(frame: CGRect(x: bounds.maxX - 50,
                                                          y: (titleLabel?.bounds.midY)!,
                                                          width: 10,
                                                          height: frame.height))
            leftImageView.image?.withRenderingMode(.alwaysOriginal)
            leftImageView.image = leftImage
            leftImageView.contentMode = .scaleAspectFit
           addSubview(leftImageView)
        }

    }
    
    
}
