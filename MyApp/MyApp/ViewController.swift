//
//  ViewController.swift
//  MyApp
//
//  Created by Zahrea Franklin on 1/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
   
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
       
    numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
   
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
   
        let alertController = UIAlertController(title:"My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

