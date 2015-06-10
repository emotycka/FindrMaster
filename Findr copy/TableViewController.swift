//
//  TableViewController.swift
//  Findr
//
//  Created by Eli Motycka on 6/9/15.
//  Copyright (c) 2015 Findr Team. All rights reserved.
//

import UIKit

import Parse
import ParseUI

class TableViewController: PFQueryTableViewController {
    
    
    // Initialise the PFQueryTable tableview
    override init(style: UITableViewStyle, className: String!) {
        super.init(style: style, className: className)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Configure the PFQueryTableView
        self.parseClassName = "lostItems"
        self.textKey = "typeLost"
        self.pullToRefreshEnabled = true
        self.paginationEnabled = false
    }
   
    override func queryForTable() -> PFQuery {
        var query = PFQuery(className: "lostItems")
        query.orderByAscending("typeLost")
        return query
    }
    
}
