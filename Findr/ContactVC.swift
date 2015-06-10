//
//  ContactVC.swift
//  Findr
//
//  Created by Georgie Halpern on 6/10/15.
//  Copyright (c) 2015 Findr Team. All rights reserved.
//

import UIKit

var final2 : FinalPost = final


class ContactVC: UIViewController {

    @IBOutlet weak var contactName: UITextField!
    @IBOutlet weak var contactEmail: UITextField!
    
    @IBOutlet weak var contactNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactEmail.placeholder = final.emailName

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showDaPostTapped(sender: UIButton) {
            final3 = final2
        final3.personName = contactName.text
        final3.emailName = contactEmail.text
        final3.phone = contactNumber.text
        
        performSegueWithIdentifier("goto_final", sender: sender)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
