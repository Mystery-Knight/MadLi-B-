//
//  AdjectiveViewController.swift
//  MadLi[B]
//
//  Created by DPI STUDENT 9 on 6/29/22.
//

import UIKit

class AdjectiveViewController: UIViewController {
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var previousWordsLabel: UILabel!
    @IBOutlet weak var previousWordsLabel2: UILabel!
    var verb = ""
    var noun = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        previousWordsLabel.text = verb
        previousWordsLabel2.text = noun

        // Do any additional setup after loading the view.
    }
    @IBAction func onAdjectiveTextFieldReturn() {
        print(adjectiveTextField.text!)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print("destination: \(segue.destination)")
        let adverbVC = segue.destination as! AdverbViewController
        adverbVC.adj = adjectiveTextField.text!
        adverbVC.noun = noun
        adverbVC.verb = verb
    }
    

}
