//
//  swipePatternTableViewCell.swift
//  tableViewSwipe
//
//  Created by Imcrinox Mac on 22/12/1444 AH.
//

import UIKit

struct profile {
    let image: String
    let name: String 
}
class swipePatternTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileNameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
