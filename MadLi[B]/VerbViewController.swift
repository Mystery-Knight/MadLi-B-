//
//  VerbViewController.swift
//  MadLi[B]
//
//  Created by DPI STUDENT 9 on 6/29/22.
//

import UIKit

class VerbViewController: UIViewController {
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var previousWordsLabel: UILabel!
    var noun = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        previousWordsLabel.text = noun
    
        // Do any additional setup after loading the view.
    }
    @IBAction func onVerbTextFieldReturn() {
        print(verbTextField.text!)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print("destination: \(segue.destination)")
        let adjectiveVC = segue.destination as! AdjectiveViewController
        adjectiveVC.verb = verbTextField.text!
        adjectiveVC.noun = noun
//        let adverbVC = segue.destination as! AdverbViewController
//        adverbVC.verb = verbTextField.text!
    }
    

}
