//
//  BillTableViewCell.swift
//  C0751142_MidTerm_MAD3115S2019
//
//  Created by admin on 2019-07-12.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class BillTableViewCell: UITableViewCell
{

    @IBOutlet weak var lblPay: UILabel!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblBillId: UILabel!
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
