//
//  NounViewController.swift
//  MadLi[B]
//
//  Created by DPI STUDENT 9 on 6/28/22.
//

import UIKit

class NounViewController: UIViewController {
    @IBOutlet weak var nounTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("NounViewController")

        // Do any additional setup after loading the view.
    }
    @IBAction func onNounTextFieldReturn() {
        print(nounTextField.text!)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print("destination: \(segue.destination)")
        let verbVC = segue.destination as! VerbViewController
        verbVC.noun = nounTextField.text!
//        let adjVC = segue.destination as! AdjectiveViewController
//        adjVC.noun = nounTextField.text!
//        let adverbVC = segue.destination as! AdverbViewController
//        adverbVC.noun = nounTextField.text!
    }
    

}
