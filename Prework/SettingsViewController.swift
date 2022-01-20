//
//  SettingsViewController.swift
//  Prework
//
//  Created by Farhan Hussain on 1/18/22.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var first_label: UITextField!
    @IBOutlet weak var second_label: UITextField!
    @IBOutlet weak var third_label: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Access UserDefaults
        let defaults = UserDefaults.standard

        // Set a String value for some key.
        defaults.set("Hello World!", forKey: "myString")
        // Set an Integer value for some key.
        defaults.set(123, forKey: "myInt")
    }
    
    @IBAction func save_btn(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
