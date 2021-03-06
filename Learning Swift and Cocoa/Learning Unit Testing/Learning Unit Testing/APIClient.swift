//
//  APIClient.swift
//  Learning Unit Testing
//
//  Created by Wesley Van der Klomp on 12/11/15.
//  Copyright © 2015 Wes Van der Klomp. All rights reserved.
//

import UIKit

class APIClient: NSObject {
    
    var arrayOfStrikes: [AnyObject]?
    
    override init() {
        super.init()
    }
    
    func getRawJSON(compeletion: () -> ()) {
        let url = NSURL(string: "http://api.dronestre.am/data")!
        
        NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) in
            let json = try? NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as! NSDictionary
            
            if let json = json {
                print("Success")
                self.arrayOfStrikes = json["strike"] as? [AnyObject]
                compeletion()
            } else {
                print("Fail")
                compeletion()
            }
        }).resume()
        
    }

}
