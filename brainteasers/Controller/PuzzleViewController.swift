//
//  PuzzleViewController.swift
//  brainteasers
//
//  Created by Emma Ellis on 4/28/20.
//  Copyright © 2020 Emma Ellis. All rights reserved.
//

import UIKit

class PuzzleViewController: UIViewController {
    
    var teaser: Brainteaser!
    
    var startTime: Date!
    
    var idx: Int!
    
    @IBOutlet weak var inPutGuess: UITextField!
    @IBOutlet weak var teaserNameLabel: UILabel!
    @IBOutlet weak var teaserQuestionLabel: UILabel!
    @IBOutlet weak var makeAGuessButton: UIButton!
    
    @IBAction func createHint(_ sender: UIButton) {
        print("creating hint")
        let hint = UIAlertController(title:title, message: self.teaser.hint, preferredStyle: UIAlertController.Style.alert)
        hint.addAction(UIAlertAction(title:"OK",style: UIAlertAction.Style.default, handler: {(action) in hint.dismiss(animated: true, completion: nil)

        }))
         present(hint, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTime = Date()
        teaserNameLabel.text = teaser.name
        teaserQuestionLabel.text = teaser.teaser
        self.inPutGuess.text = ""
        if self.teaser.completed {
            makeAGuessButton.isEnabled = false
            makeAGuessButton.backgroundColor = UIColor.gray
        }
    }
    
    @IBAction func backToPuzzle(for segue:UIStoryboardSegue){
        if let winViewController = segue.source as? WinViewController {
            var idx = winViewController.idx + 1
            var currPuzzle = teasers[names[idx]]
            while currPuzzle!.completed && idx < names.count - 1 {
                idx += 1
                currPuzzle = teasers[names[idx]]
            }
            self.teaser = currPuzzle
            self.idx = idx
            viewDidLoad()
           }
       }
    
    @IBAction func checkanswer(_ sender: Any) {
        if !self.teaser.completed {
            updateTime()
            if inPutGuess.text != "" {
                if teaser.checkAnswer(inPutGuess.text ?? ""){
                    self.performSegue(withIdentifier: "goToWin", sender: self)
                }
                else{ self.performSegue(withIdentifier: "goToLoss", sender: self)
                    }
                }
            }
        }
    
    
    /* Prepare for segue to PuzzleViewController for one of the puzzles. */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let dest = segue.destination as? WinViewController {
                dest.idx = idx
        }
    }
    
    func updateTime() {
        let elapsed = Date().timeIntervalSince(startTime)
        teaser.time += elapsed
        startTime = Date()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if !self.teaser.completed {
           updateTime()
        }
    }

}
