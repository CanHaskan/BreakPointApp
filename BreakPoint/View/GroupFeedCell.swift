//
//  GroupFeedCell.swift
//  BreakPoint
//
//  Created by Can Haskan on 16.12.2025.
//

import UIKit

class GroupFeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // contentLbl için preferredMaxLayoutWidth set et
        contentLbl.preferredMaxLayoutWidth = contentLbl.frame.width
        contentLbl.setNeedsLayout()
        contentLbl.layoutIfNeeded()
    }

}
