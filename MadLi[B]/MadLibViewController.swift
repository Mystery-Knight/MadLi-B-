//
//  MadLibViewController.swift
//  MadLi[B]
//
//  Created by DPI STUDENT 9 on 6/30/22.
//

import UIKit

class MadLibViewController: UIViewController {
    @IBOutlet weak var madlibLabel: UILabel!
    var adj = ""
    var verb = ""
    var noun = ""
    var adverb = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let madlib = "The \(noun) is a \(adj) aerobic \(noun) that \(adverb) \(verb) more \(adj) as it continues. The 20 meter \(noun) will \(verb) in 30 seconds. Line up at the \(noun). The \(verb)ing \(adj) starts \(adj) but gets faster each \(noun) after you hear this signal [beep]. A \(adj) \(verb) be completed each time you hear this \(noun) [ding]. Remember to \(verb) in a \(adj) line and run as long as \(adj). The second time you \(verb) to complete a lap \(adverb) the sound, your \(noun) is \(adverb). The test will begin on the word \(verb). On your mark, \(verb) \(adj), \(verb)"
        madlibLabel.text = madlib
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
