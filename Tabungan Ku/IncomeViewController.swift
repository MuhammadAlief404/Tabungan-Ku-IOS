//
//  IncomeViewController.swift
//  Tabungan Ku
//
//  Created by Muhammad Alief on 28/05/19.
//  Copyright © 2019 Muhammad Alief. All rights reserved.
//

import UIKit
import CoreData
class IncomeViewController: UIViewController {
    var context:NSManagedObjectContext!
    @IBOutlet weak var incomeDescTextField: UITextField!
    @IBOutlet weak var incomeAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func validateInputs(_ amountText: String!, _ descText: String!) -> Bool {
        let amount = Double(amountText)
        
        if (amount! < 0 || amount == nil) {
            return false
        }
        
        if (descText.count < 1) {
            return false
        }
        
        return true
    }

    @IBAction func commitTransaction(_ sender: Any) {
        let inputsValid = validateInputs(incomeAmountTextField.text, incomeDescTextField.text)
        
        if (!inputsValid) {
            print("input invalid!")
        } else {
            //commit here
            
            let entity = NSEntityDescription.entity(forEntityName: "Transaction", in: context)
            
            let newTransaction = NSManagedObject(entity: entity!, insertInto: context)
            
            
            newTransaction.setValue(Double(incomeAmountTextField.text!)!, forKey: "amount")
            newTransaction.setValue(incomeDescTextField.text, forKey:"desc")
            newTransaction.setValue("income", forKey:"desc")
            
            do{
                try context.save()
            }catch{
                print("Insert Failed")
            }
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
}
