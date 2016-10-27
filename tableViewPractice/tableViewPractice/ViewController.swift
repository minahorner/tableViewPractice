//
//  ViewController.swift
//  tableViewPractice
//
//  Created by student3 on 10/26/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableViewArticles: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewArticles.delegate = self
        tableViewArticles.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 1
    }
    
    
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
       /* if(indexPath.row == 0){
        var articleTitleCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "articleTitleCell")
            articleTitleCell.textLabel?.text = "this is a title"
            articleTitleCell.detailTextLabel?.text = "this is a subtitle"
            return articleTitleCell
       }
        else{
        var articleCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "artileCell")
            articleCell.textLabel?.text = "this is an article"
            return articleCell
        }
 */
        var articleCell = tableViewArticles.dequeueReusableCellWithIdentifier("ArticleTableViewCell") as! ArticleTableViewCell
        articleCell.author.text = "Mina Horner"
        articleCell.title.text = "Important Article"
        articleCell.articleText.text = "Homecoming Week ended with a bang at Friday’s assembly, where seniors Hannah Mulroe and Troy Fischer were crowned Queen and King of Homecoming.  Also featured was a performance by choir rife with throwback hits, and the announcement of the winner of the hallway decoration contest, which also went to choir."
        return articleCell
        
    }
 
}



