//
//  AdverbViewController.swift
//  MadLi[B]
//
//  Created by DPI STUDENT 9 on 6/29/22.
//

import UIKit

class AdverbViewController: UIViewController {
    @IBOutlet weak var adverbTextField: UITextField!
    @IBOutlet weak var prevoiusWordsLabel: UILabel!
    @IBOutlet weak var previousWordsLabel2: UILabel!
    @IBOutlet weak var previousWordsLabel3: UILabel!
    var adj = ""
    var verb = ""
    var noun = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        prevoiusWordsLabel.text = adj
        previousWordsLabel2.text = verb
        previousWordsLabel3.text = noun

        // Do any additional setup after loading the view.
    }
    @IBAction func onAdverbTextFieldReturn() {
        print(adverbTextField.text!)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let madlibVC = segue.destination as! MadLibViewController
        madlibVC.adverb = adverbTextField.text!
        madlibVC.noun = noun
        madlibVC.verb = verb
        madlibVC.adj = adj
    }
    

}
