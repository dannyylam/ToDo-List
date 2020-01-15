//
//  SecondViewController.swift
//  ToDoList
//
//  Created by CISP 53 on 4/23/19.
//  Copyright © 2019 Danny Lam. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        
        if let tempItems = itemsObject as? [String] {
            items=tempItems
            items.append(itemTextField.text!)
            
        } else {
            
            items = [itemTextField.text!]
        }
        UserDefaults.standard.set(items, forKey: "items")
        itemTextField.text = ""
        
        
    }
    //func for keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

