//
//  customTableViewCell.swift
//  Exam1
//
//  Created by Kevin Lathidadiya on 04/09/21.
//

import UIKit

class customTableViewCell: UITableViewCell {
        
    lazy var cellView : UIView = {
        let cellview = UIView(frame: CGRect(x: 10, y: 8, width: self.frame.width , height: 110))
        cellview.backgroundColor = .systemGreen
        return cellview
    }()
    
    lazy var userNamelbl : UILabel = {
        let lable = UILabel(frame: CGRect(x: 5, y: 5, width: 80, height: 80))
        lable.textAlignment = .center
        lable.textColor = UIColor.white
        return lable
    }()
    
    lazy var userAgelbl : UILabel = {
        let lable = UILabel(frame: CGRect(x: 50, y: 5, width: 80, height: 80))
        lable.textAlignment = .center
        lable.textColor = UIColor.white
        return lable
    }()
    
    lazy var myimage : UIImageView = {
        let image = UIImageView(frame: CGRect(x: 70, y: 5, width: 100, height: 100))
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "1")
        return image
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        cellView.layer.cornerRadius = 5
        cellView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        addSubview(cellView)
        addSubview(userNamelbl)
        addSubview(userAgelbl)
        addSubview(myimage)
        // Configure the view for the selected state
    }

}
