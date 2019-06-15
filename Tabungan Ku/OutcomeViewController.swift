//
//  OutcomeViewController.swift
//  Tabungan Ku
//
//  Created by Muhammad Alief on 28/05/19.
//  Copyright © 2019 Muhammad Alief. All rights reserved.
//

import UIKit

class OutcomeViewController: UIViewController {

    @IBOutlet weak var transactionAmountTextField: UITextField!
    @IBOutlet weak var transactionDescTextField: UITextField!
    @IBAction func commitOutcomeTransaction(_ sender: Any) {
        let inputsValid = validateInputs(transactionAmountTextField.text, transactionDescTextField.text)
        
        if (!inputsValid) {
            print("input invalid!")
        } else {
            //commit here
        }
        
    
    }
    
    func validateInputs(_ amountText: String!, _ descText: String!) -> Bool {
        let amount = Int(amountText)
    
        if (amount! < 0 || amount == nil) {
            return false
        }
        
        if (descText.count < 1) {
            return false
        }
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
