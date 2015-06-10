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

   
    @IBOutlet var homeView: UIView!
    
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(false)
        self.showLoginView()
    }


    @IBAction func unwindSegueToHome(segue: UIStoryboardSegue){
        isAuthenticated = true
        view.alpha = 1.0
        
    }
    
    
    
    func showLoginView() {
        
        if !isAuthenticated {
            self.performSegueWithIdentifier("goto_login", sender: self)
        }
    }


    @IBAction func logoutAction(sender: UIButton) {
        isAuthenticated = false
        self.performSegueWithIdentifier("goto_login", sender: self)
    }
    
    
}

