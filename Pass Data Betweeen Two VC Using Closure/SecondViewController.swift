//
//  SecondViewController.swift
//  Pass Data Betweeen Two VC Using Closure
//
//  Created by macmini01 on 21/08/22.
//

import UIKit

//MARK: COMPLETION HANDLER FOR ARRAY
//typealias completionHandler = ([String]) -> Void

//MARK: COMPLETION HANDLER FOR DICTIONARY
typealias completionHandler = ([String : String]) -> Void

class SecondViewController: UIViewController {
    
    //MARK: ARRAY
    var details = [String]()
    
    //MARK: OUTLETS
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    var completion: completionHandler?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: ACTION OF SAVE BUTTON
    @IBAction func btnSave(_ sender: Any) {
        guard let name = txtName.text else { return }
        guard let password = txtPassword.text else { return }
        
        // Passing Arrays
//        details.append(name)
//        details.append(password)
//        guard let completionBlock = completion else { return }
//        completionBlock(details)
        
        // Passing Dictionary
        let dict = ["name": name, "password": password]
        guard let completionBlock = completion else { return }
        completionBlock(dict)
        
        navigationController?.popViewController(animated: true)
    }
    
}
