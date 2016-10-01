//
//  LoginViewController.swift
//  Someday
//
//  Created by Ruiqing Qiu on 10/1/16.
//  Copyright © 2016 Someday. All rights reserved.
//

import UIKit
import DigitsKit
class LoginViewController: UIViewController {

    @IBAction func LoginClicked(_ sender: AnyObject) {
        let digits = Digits.sharedInstance()
        digits.authenticate { (session, error) in
            // Inspect session/error objects
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
