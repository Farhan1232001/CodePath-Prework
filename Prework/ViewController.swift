//
//  ViewController.swift
//  Prework
//
//  Created by Farhan Hussain on 12/28/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets the title in the Navigation Bar
        super.title = "Tip Calculator"
        // Do any additional setup after loading the view.
        
        self.billAmountTextField.delegate = self
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0  // ?? called coalescing operator. Checks if value is nil
                                                            // If it is, 0 is assigned instead
        
        // Get Total tip by multiplying ip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    
    
    // Hide keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    // Presses return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return billAmountTextField.resignFirstResponder()
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
}

