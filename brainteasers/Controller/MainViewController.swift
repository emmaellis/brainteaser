//
//  MainViewController.swift
//  brainteasers
//
//  Created by Emma Ellis on 4/28/20.
//  Copyright © 2020 Emma Ellis. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var puzzleTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //defined in brainteaserModel.swift
        puzzleTableView.delegate = self
        puzzleTableView.dataSource = self
        puzzleTableView.layer.cornerRadius = 24
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        loadFirebaseData()
        puzzleTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
   /* Length of tableView*/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    /* Function for cell generation */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "puzzleCell", for: indexPath) as? PuzzleTableViewCell {
            // configure cell
            let currentPuzzle = teasers[names[indexPath.row]]
            cell.puzzleName.text = currentPuzzle?.name
            if currentPuzzle!.completed {
                cell.completedInLabel.text = "Completed in:"
                cell.time.text = formatDate(time: currentPuzzle!.time)
            } else {
                cell.time.text = ""
                cell.completedInLabel.text = ""
            }
            //Make difficulties have different colors
            cell.difficultyLabel.text = String(currentPuzzle!.difficulty)
            if currentPuzzle!.difficulty == 1 {
                cell.difficultyLabel.layer.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1).cgColor
            } else if currentPuzzle!.difficulty == 2 {
                cell.difficultyLabel.layer.backgroundColor =  UIColor(red: 1, green: 1, blue: 0, alpha: 1).cgColor
            } else {
                cell.difficultyLabel.layer.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor
            }
            return cell
        }
        return UITableViewCell()
    }
    
    @IBAction func backToMenu(for sugue:UIStoryboardSegue){
        
    }
    
    /* Function called if a cell is selected */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        performSegue(withIdentifier: "mainToBrainteaser", sender: indexPath.row)
    }
    
//   /* Format the time interval into a nice string. */
    func formatDate(time: TimeInterval) -> String {
        // returns a concise string corresponding to time since post
        let intTime = Int(time)
        let seconds = intTime % 60
        let minutes = (intTime / 60) % 60
        let hours = (intTime / 3600)
        
        return String(format: "%0.2dh%0.2dm%0.2ds", hours, minutes, seconds)
    }
    
    

    
    
    
    
    /* Prepare for segue to PuzzleViewController for one of the puzzles. */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let dest = segue.destination as? PuzzleViewController {
            if let row = sender as? Int, let currentPuzzle = teasers[names[row]] {
                dest.teaser = currentPuzzle
                dest.idx = row
            }
        }
    }
    

}
