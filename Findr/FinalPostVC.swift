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

var final3 : FinalPost = final2


class FinalPostVC: UIViewController {

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
        lostPost["itemLost"] = final3.itemName
        lostPost["emailLost"] = final3.personName
        lostPost.saveInBackgroundWithBlock{(success: Bool, error: NSError?)-> Void in if (success){
            //The object has been save
        } else {
            //was a problem, check error
            }
            
        
        
        }
        var findrs = [AnyObject?]()
        //findrs = cloudMatcher.findMatches(final.itemName!)
        println(findrs)
        println("itemName is \(final3.itemName)")
       
    }
}