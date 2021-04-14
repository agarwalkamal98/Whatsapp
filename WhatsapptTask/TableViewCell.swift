//
//  TableViewCell.swift
//  WhatsapptTask
//
//  Created by kamal agarwal on 09/03/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var Dpimg: UIImageView!
    
    
    @IBOutlet weak var NameLbl: UILabel!
    
    @IBOutlet weak var DescLbl: UILabel!
    
    @IBOutlet weak var TimeLbl: UILabel!
    
    @IBOutlet weak var Addimg: UIButton!
    
    
    @IBOutlet weak var img1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
