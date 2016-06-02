//
//  ViewController.swift
//  WWDC
//
//  Created by Richard Ekle on 9/29/15.
//  Copyright © 2015 Ekle Software, Inc. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UITableViewController {
    
    var names = [String]()
    var urls = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.readURLs()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let index = indexPath.row
        
        let url = urls[index]
        let controller = VideoPlayer()
        controller.url = url
        
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func readURLs()
    {
        if let path = NSBundle.mainBundle().pathForResource("videoinfo", ofType: "json")
        {
            print(path);
            do
            {
                if let jsonData = NSData(contentsOfFile: path)
                {
                    let json = try NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions(rawValue:0))
                    
                    if let jsonArray = json as? [NSDictionary] {
                        for item in jsonArray
                        {
                            if let company = item["Company"] as? String,
                                let conferences = item["Conferences"] as? [NSDictionary]
                            {
                                for currConference in conferences
                                {
                                    if let conferenceName = currConference["Name"] as? String,
                                        let videos = currConference["Videos"] as? [NSDictionary]
                                    {
                                        for currVideo in videos
                                        {
                                            if let videoName = currVideo["Name"] as? String,
                                                let videoURL = currVideo["URL"] as? String
                                            {
                                                let name = "\(company) \(conferenceName) \(videoName)"
                                                names.append(name)
                                                urls.append(videoURL)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch let e
            {
                print("Exception!")
            }
        }
    }

}

