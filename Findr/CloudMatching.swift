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
    
    
    func findMatches(Item: String, Findr: Bool)->[AnyObject]{
        //in the case that you found something
        if(Findr){
            
            
            var queryClassLost: PFQuery=PFQuery(className: "endLost")
            queryClassLost.whereKey("itemLost", equalTo: Item)
            var lostArray = queryClassLost.findObjects()
            var emailArray = [AnyObject?]()
            for element in lostArray as! [PFObject]{
                emailArray.append(element.valueForKey("emailLost"))
            }
            var emailStrings = [String]()
            for email in emailArray {
                emailStrings.append(email as! String)
            }
            
            //var stringEmailArray = emailArray.filter{ $0 != nil }.map{ $0! }
            
            return emailStrings
            
        }
            
        else{
            var queryClassFound: PFQuery=PFQuery(className: "endFound")
            queryClassFound.whereKey("itemFound", equalTo: Item)
            var foundArray = queryClassFound.findObjects()
            var emailArray = [AnyObject?]()
            for element in foundArray as! [PFObject]{
                emailArray.append(element.valueForKey("emailFound"))
            }
            var emailStrings = [String]()
            for email in emailArray {
                emailStrings.append(email as! String)
            }
            
            //var stringEmailArray = emailArray.filter{ $0 != nil }.map{ $0! }
            
            return emailStrings
        }
    }
    
    
    
}

