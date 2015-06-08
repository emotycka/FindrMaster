//
//  ItemInfoBundle.swift
//  Findr
//
//  Created by Georgie Halpern on 6/8/15.
//  Copyright (c) 2015 Findr Team. All rights reserved.
//

import Foundation

class ItemInfoBundle: NSObject{
    
//    let who: String?
//    let what: String?
//    let when: String?
//    let latitude: String?
//    let longitude: String?
//    let about: String?
//    let email: String?
    
    let imageName: String?
    let name: String?
    let title: String?
    let location: String?
    let about: String?
    let web: String?
    let facebook: String?
    let twitter: String?
    
    init(dictionary:NSDictionary){
        imageName = dictionary["image"]    as? String
        name      = dictionary["name"]     as? String
        title     = dictionary["title"]    as? String
        location  = dictionary["location"] as? String
        web       = dictionary["web"]      as? String
        facebook  = dictionary["facebook"] as? String
        twitter   = dictionary["twitter"]  as? String
        
        // fixup the about text to add newlines
        var unescapedAbout = dictionary["about"] as? String
        about = unescapedAbout?.stringByReplacingOccurrencesOfString("\\n", withString:"\n", options:nil, range:nil)
    }
    
    
    class func loadMembersFromFile(path:String) -> [ItemInfoBundle]
    {
        var members:[ItemInfoBundle] = []
        
        var error:NSError? = nil
        if let data = NSData(contentsOfFile: path, options:nil, error:&error),
            json = NSJSONSerialization.JSONObjectWithData(data, options: nil, error:&error) as? NSDictionary,
            team = json["team"] as? [NSDictionary] {
                for memberDictionary in team {
                    let member = ItemInfoBundle(dictionary: memberDictionary)
                    members.append(member)
                }
        }
        return members
    }



}
