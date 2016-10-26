//
//  ViewController.swift
//  Correspondent
//
//  Created by student3 on 10/25/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var articleTitles = ["Articel Title 1", "Article Title 2"]
    var articles = ["article 1", "something something somthing ajadslf; "]
    
    
    @IBOutlet weak var articleTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        articleTableView.delegate = self
        articleTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return articles.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = articleTableView.dequeueReusableCellWithIdentifier("articleCell", forIndexPath: indexPath)
        cell.textLabel?.text = articleTitles[indexPath.row]
        
        
        cell.detailTextLabel?.text = articles[indexPath.row]
        return cell
    }


}

