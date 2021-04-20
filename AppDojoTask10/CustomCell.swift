//
//  CustomCell.swift
//  AppDojoTask10
//
//  Created by Naoyuki Kan on 2021/04/19.
//

import Foundation
import UIKit

final class CustomCell: UITableViewCell {
    @IBOutlet private weak var prefectureLabel: UILabel!
    @IBOutlet private weak var messageLabel: UILabel!

    private let colors: [UIColor] = [
        #colorLiteral(red: 1, green: 0.8207610846, blue: 0.8154812455, alpha: 1),
        #colorLiteral(red: 0.8726128936, green: 0.964006722, blue: 0.6017570496, alpha: 1),
        #colorLiteral(red: 0.79523772, green: 0.8445034027, blue: 1, alpha: 1),
    ]

    func configure(prefectureName: String, index: Int) {
        prefectureLabel.text = prefectureName
        messageLabel.text = "\(index + 1)番目の都道府県です"
        contentView.backgroundColor = colors[index % 3]
    }
}
