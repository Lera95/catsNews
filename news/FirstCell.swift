//
//  FirstCell.swift
//  news
//
//  Created by Valeriia Shcherbakova on 11.03.2021.
//

import UIKit

class FirstCell: UITableViewCell {
  private let sourceNameLable = UILabel()
  private let avatar = UIImageView()
  private let likeUpButton = UIButton()
  private let likeDownButton = UIButton()
  private let likeLable = UILabel()
  private let dateLable = UILabel()
  private let newsImage = UIImageView()
  private let titleLabel = UILabel()
  private let textShortLable = UILabel()
  private let cellContainer = UIView()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupSubviews()
  }
    
    required init?(coder: NSCoder) {
      super.init(coder: coder)
      setupSubviews()
    }
    
    func setData(with object: NewsObject) {
      sourceNameLable.text = object.nameOfSource
      newsImage.image = object.image
      titleLabel.text = object.title
      textShortLable.text = object.shortText
      newsImage.image = object.image
      avatar.image = object.avatar
      likeLable.text = object.like
      dateLable.text = object.postDate
    }
  }

  private extension FirstCell {
    
    private func setupSubviews() {
      contentView.addSubview(cellContainer)
      cellContainer.addSubview(titleLabel)
      cellContainer.addSubview(newsImage)
      cellContainer.addSubview(textShortLable)
      cellContainer.addSubview(avatar)
      cellContainer.addSubview(likeUpButton)
      cellContainer.addSubview(likeDownButton)
      cellContainer.addSubview(likeLable)
      cellContainer.addSubview(dateLable)
      cellContainer.addSubview(sourceNameLable)
      
      cellContainer.edgesToSuperview()
      cellContainer.backgroundColor = .white
      
      avatar.topToSuperview(offset: 10)
      avatar.leftToSuperview(offset: 20)
      avatar.layer.borderWidth = 1.0
      avatar.layer.masksToBounds = false
      avatar.layer.borderColor = UIColor.white.cgColor
      avatar.size(CGSize(30))
      avatar.layer.cornerRadius = 15
      avatar.clipsToBounds = true
      
      sourceNameLable.topToSuperview(offset: 15)
      sourceNameLable.leftToRight(of: avatar, offset: 5)
      sourceNameLable.rightToSuperview()
      sourceNameLable.textColor = .darkGray
      
      dateLable.topToBottom(of: sourceNameLable)
      dateLable.leftToRight(of: avatar, offset: 15)
      sourceNameLable.rightToSuperview()
      dateLable.font = UIFont.systemFont(ofSize: 10, weight: .regular)
      dateLable.textColor = .darkGray
      
      titleLabel.topToBottom(of: avatar, offset: 15)
      titleLabel.rightToSuperview(offset: -5)
      titleLabel.leftToSuperview(offset: 5)
      titleLabel.numberOfLines = 2
      titleLabel.font = UIFont.italicSystemFont(ofSize: 18)
      titleLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
      
      textShortLable.topToBottom(of: titleLabel, offset: 10)
      textShortLable.leftToSuperview(offset: 10)
      textShortLable.rightToSuperview(offset: -5)
      textShortLable.numberOfLines = 0
      textShortLable.font = UIFont.systemFont(ofSize: 14, weight: .medium)
      
      likeUpButton.leftToSuperview(offset: 20)
      likeUpButton.topToBottom(of: textShortLable, offset: 10)
      likeUpButton.bottomToSuperview(offset: -10)
      likeUpButton.size(CGSize(20, 22))
      likeUpButton.setImage(UIImage(named: "arrowUP"), for: .normal)
      
      likeLable.leftToRight(of: likeUpButton)
      likeLable.bottomToSuperview(offset: -10)
      likeLable.font = UIFont.systemFont(ofSize: 14, weight: .medium)
      
      likeDownButton.leftToRight(of: likeLable)
      likeDownButton.topToBottom(of: textShortLable, offset: 10)
      likeDownButton.size(CGSize(20, 21))
      likeDownButton.setImage(UIImage(named: "arrowDown"), for: .normal)
    }
  }


