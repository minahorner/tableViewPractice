//
//  ArticleTableViewCell.swift
//  tableViewPractice
//
//  Created by student3 on 10/26/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

   
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var articleText: UILabel!
    @IBAction func readMorePressed(sender: UIButton) {
        //this does nothing
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
