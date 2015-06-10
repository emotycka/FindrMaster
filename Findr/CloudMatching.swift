//
//  CloudMatching.swift
//  
//
//  Created by Eli Motycka on 6/9/15.
//
//

import Foundation
import Parse

class CloudMatching{
    
    init(){
        var match: Bool = false
    }
    
    
    func findMatches(Item: PFObject)->[AnyObject?]{
        //in the case that you found something
        var queryClassLost: PFQuery=PFQuery(className: "endLost")
        queryClassLost.whereKey("itemLost", equalTo: Item)
        var lostArray = queryClassLost.findObjects()
        var emailArray = [AnyObject?]()
        for element in lostArray as! [PFObject]{
            emailArray.append(element.valueForKey("emailLost"))
        }
        
        var stringEmailArray = emailArray.filter{ $0 != nil }.map{ $0! }
        
        
    return stringEmailArray
        
    }

    
    
    
}

