//
//  ViewController.swift
//  Findr
//
//  Created by Eli Motycka on 6/7/15.
//  Copyright (c) 2015 Findr Team. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

   
    
    var isAuthenticated = false
    
    var managedObjectContext: NSManagedObjectContext? = nil
    var _fetchedResultsController: NSFetchedResultsController? = nil
    
    var didReturnFromBackground = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "appWillResignActive:", name: UIApplicationWillResignActiveNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "appDidBecomeActive:", name: UIApplicationDidBecomeActiveNotification, object: nil)
    }
    
    func appWillResignActive(notification : NSNotification) {
        
        view.alpha = 0
        isAuthenticated = false
        didReturnFromBackground = true
    }
    
    func appDidBecomeActive(notification : NSNotification) {
        
        if didReturnFromBackground {
            self.showLoginView()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(false)
        self.showLoginView()
    }

    func showLoginView() {

        if !isAuthenticated {
            self.performSegueWithIdentifier("goto_login", sender: self)
        }
    }


    @IBAction func unwindSegueToHome(segue: UIStoryboardSegue){
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func logoutAction(sender: UIButton) {
        isAuthenticated = false
        self.performSegueWithIdentifier("goto_login", sender: self)
    }
    
    
}

