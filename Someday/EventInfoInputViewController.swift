//
//  EventInfoInputViewController.swift
//  Someday
//
//  Created by Ruiqing Qiu on 10/1/16.
//  Copyright © 2016 Someday. All rights reserved.
//

import UIKit

class EventInfoInputViewController: UIViewController {
    

    @IBOutlet var InputEventName: UITextField!
    @IBOutlet var InputActivies: UITextField!
    @IBOutlet var InputLocation: UITextField!
    
    @IBOutlet var LowerBoundTimeStr: UILabel!
    @IBOutlet var UpperBoundTimeStr: UILabel!
    

    var default_time = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func EventNameChanged(_ sender: AnyObject) {
     //   print(InputEventName.text)
    }
    
    @IBAction func ActivitiesInput(_ sender: AnyObject) {
        //print(InputActivies.text)
    }
    
    @IBAction func LocationChanged(_ sender: AnyObject) {
        //print(InputLocation.text)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // This is for adding time for lower bound time
    @IBAction func LowerInc(_ sender: AnyObject) {
        default_time = (default_time + 1) % 24
        LowerBoundTimeStr.text = "\(default_time): 00"
    }
    
    // This is for decreasing time for lower bound time
    @IBAction func LowerDec(_ sender: AnyObject) {
        default_time = (default_time - 1) < 0 ? 23 :(default_time - 1) % 24
        LowerBoundTimeStr.text = "\(default_time): 00"
    }
    
    
    //This is for adding time for upper bound time
    @IBAction func UpperInc(_ sender: AnyObject) {
        default_time = (default_time + 1) % 24
        UpperBoundTimeStr.text = "\(default_time):00"
    }
    @IBAction func UpperDec(_ sender: AnyObject) {
        default_time = (default_time - 1) < 0 ? 23 : (default_time - 1) % 24
        UpperBoundTimeStr.text = "\(default_time):00"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Submit(_ sender: AnyObject) {
        //Make http request
        //Convert all variables to one jSON string
        
    }

}
