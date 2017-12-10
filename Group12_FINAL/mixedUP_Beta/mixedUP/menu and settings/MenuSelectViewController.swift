//
//  MenuSelectViewController.swift
//  mixedUP
//
//  Created by Nicholas Frawley on 10/30/17.
//  Copyright © 2017 Nicholas Frawley. All rights reserved.
//

import UIKit

class MenuSelectViewController: UIViewController {

    var loggedInAccountInformation: UserData? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toDrinkTrackerSegue"
        {
            let vc = segue.destination as! drinkTrackerViewController
            vc.loggedInAccountInformation = self.loggedInAccountInformation
        }
    }
    

}
