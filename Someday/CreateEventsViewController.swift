//
//  CreateEventsViewController.swift
//  Someday
//
//  Created by Mingshan Wang on 10/1/16.
//  Copyright © 2016 Someday. All rights reserved.
//

import UIKit

class CreateEventsViewController: UIViewController {

    @IBOutlet var InputEventName: UITextField!
    @IBOutlet var InputActivities: UITextField!
    @IBOutlet var InputLocation: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func EventNameEntered(_ sender: AnyObject) {
        print(InputEventName)
    }
    @IBAction func ActivitiesEntered(_ sender: AnyObject) {
        print(InputActivities)
    }
    
    @IBAction func LocationChanged(_ sender: AnyObject) {
        print(InputLocation)
    }

   
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
