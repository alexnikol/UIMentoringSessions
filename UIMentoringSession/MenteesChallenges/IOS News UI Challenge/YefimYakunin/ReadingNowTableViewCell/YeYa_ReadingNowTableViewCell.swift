//
//  ReadingNowTableViewCell.swift
//  UIMentoringSession
//
//  Created by Yefim on 04.06.2023.
//  Copyright © 2023 Almost Engineer. All rights reserved.
//

import UIKit

protocol CollectionViewCellDelegate: AnyObject {
    func collectionView(collectionviewcell: CollectionViewCell?, index: Int, didTappedInTableViewCell: YeYa_ReadingNowTableViewCell)
}

class YeYa_ReadingNowTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
