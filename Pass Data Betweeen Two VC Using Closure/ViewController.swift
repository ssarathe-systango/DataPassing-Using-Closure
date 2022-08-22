//
//  ViewController.swift
//  Pass Data Betweeen Two VC Using Closure
//
//  Created by macmini01 on 21/08/22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: OUTLETS
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: ACTION OF HOME BUTTON
    @IBAction func btnHomeClick(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        // accessing values of array.
//        vc.completion = { details in
//            self.lblName.text = details.first
//            self.lblPassword.text = details.last
//        }
        
        // accessing values of dictionary
        vc.completion = { details in
            self.lblName.text = details["name"]
            self.lblPassword.text = details["password"]
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

