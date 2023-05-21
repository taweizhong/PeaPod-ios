//
//  ImgViewCell.swift
//  peapod
//
//  Created by 他维忠 on 2023/5/19.
//

import UIKit

class ImgViewCell: UITableViewCell {


    @IBOutlet weak var Content: UILabel!
    @IBOutlet weak var Img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func bind(_ data:String) {
        Img.image = UIImage(named:data)
    }
    func bindContent(_ data:String) {
        Content.text = data
    }

}
