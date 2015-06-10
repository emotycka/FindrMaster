//
//  FinalPostVC.swift
//  Findr
//
//  Created by Georgie Halpern on 6/10/15.
//  Copyright (c) 2015 Findr Team. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class FinalPostVC: UIViewController {
    var personName: String?
    var itemName : String?
    var latitude : Double?
    var longitude: Double?
    var final = FinalPost()
//    var cloudMatcher = CloudMatching()
    

//    required init(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
////        fatalError("init(coder:) has not been implemented")
//        personName = "YOOOOOOO"
//        itemName = "EITAL"
//        latitude = nil
//        longitude = nil
//    }
    
    @IBAction func createButton(sender: UIButton) {
        var lostPost = PFObject(className: "endLost")
        lostPost["itemLost"] = final.itemName
        lostPost["emailLost"] = final.personName
        lostPost.saveInBackgroundWithBlock{(success: Bool, error: NSError?)-> Void in if (success){
            //The object has been save
        } else {
            //was a problem, check error
            }
            
        
        
        }
        var findrs = [AnyObject?]()
        //findrs = cloudMatcher.findMatches(final.itemName!)
        println(findrs)
        println("itemName is \(itemName)")
       
    }
}