//
//  QuestionCell.swift
//  StackOverflow
//
//  Created by Bruno Da luz on 02/04/16.
//  Copyright © 2016 Bruno da Luz. All rights reserved.
//

import UIKit

class QuestionCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var vote: UILabel!
    @IBOutlet weak var photoUser: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func viewModel(info: NSDictionary) {
        title.text = info.valueForKey("title") as? String
        vote.text  = "\(info.valueForKey("score") as! Int)"
        user.text  = info.valueForKey("display_name") as? String
        photoUser.downloadedFrom(link: (info.valueForKey("profile_image") as? String)!,
                                 contentMode: UIViewContentMode.ScaleToFill)
    }
    
}
