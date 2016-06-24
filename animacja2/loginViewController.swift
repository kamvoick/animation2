//
//  loginViewController.swift
//  animacja2
//
//  Created by Kamil Wójcik on 24.06.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    
    override func viewWillAppear(animated: Bool) {
        login.center.x -= view.bounds.width
        login.alpha = 0.0
        password.center.x -= view.bounds.width
        password.alpha = 0.0
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        self.login.alpha = 1.0
        self.password.alpha = 1.0
        
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.5, options: [.CurveEaseOut], animations: {
            
            self.login.center.x += self.view.bounds.width

            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [.CurveEaseOut], animations: {

            self.password.center.x += self.view.bounds.width

            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
