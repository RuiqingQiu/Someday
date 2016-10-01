//
//  FirstViewController.swift
//  Someday
//
//  Created by Ruiqing Qiu on 9/30/16.
//  Copyright © 2016 Someday. All rights reserved.
//

import UIKit
import DigitsKit

class FirstViewController: UIViewController {

    @IBAction func Login(_ sender: AnyObject) {
        if(Digits.sharedInstance().session() != nil){
            print("user logged in")
        }
        else{
            let configuration = DGTAuthenticationConfiguration(accountFields: .defaultOptionMask)
            configuration?.appearance = DGTAppearance()
            
            configuration?.appearance.logoImage = UIImage(named: "logo")
            
            configuration?.appearance.labelFont = UIFont(name: "HelveticaNeue-Bold", size: 16)
            configuration?.appearance.bodyFont = UIFont(name: "HelveticaNeue-Italic", size: 16)
            
            configuration?.appearance.accentColor = UIColor(red:0.33, green:0.67, blue:0.93, alpha:1.0)
            //configuration?.appearance.backgroundColor = UIColor(patternImage: UIImage(named: "bg-pattern")!)
            
            Digits.sharedInstance().authenticate(with: self, configuration: configuration!) { (session, error) -> Void in
                if (session != nil) {
                    print(session?.phoneNumber)
                    //print("Your Digits User ID is \(session?.userID)", forState: UIControlState.Normal)
                }
                else {
                    print(error?.localizedDescription)
                }
                
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Digits.sharedInstance().logOut()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let digitsButton = DGTAuthenticateButton(authenticationCompletion: { (session, error) in
            // Inspect session/error objects
        })
        self.view.addSubview(digitsButton!)
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

