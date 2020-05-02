//
//  brainteaserModel.swift
//  brainteasers
//
//  Created by Emma Ellis on 4/21/20.
//  Copyright © 2020 Emma Ellis. All rights reserved.
//

import Foundation
import Firebase

let progressDB = Firestore.firestore()

//How to we make all the brainteasers be in the database

class Brainteaser {
    var name: String
    var teaser: String
    var answer: String //change to an int?
    var difficulty: Int
    var hint: String
    var completed: Bool = false
    var time: TimeInterval = 0
    
    init(name: String, teaser: String, answer: String, difficulty: Int, hint: String) {
        self.name = name
        self.teaser = teaser
        self.answer = answer
        self.difficulty = difficulty
        self.hint = hint

    }
    
    /* Basic boolean to check if a guess is correct, updates firebase*/
    func checkAnswer(_ guess: String) -> Bool {
        if answer == guess {
            self.completed = true
                completeBrainteaser()
                return true
        }
        return false
    }
    
    /* Function that updates firebase with the amount of time taken to finish a puzzle*/
    func completeBrainteaser() {
        var ref: DocumentReference? = nil
        ref = progressDB.collection("puzzles").addDocument(data: [
            "name" : self.name,
            "time" : self.time
        ]) { err in
            if let err = err {
                print("error in adding document: \(err)")
            } else {
                print("document added with id: \(ref!.documentID)")
            }
            
        }
        
    }
}

/* Function called to load all firebase data and update teasers. */
func loadFirebaseData() {
        //need to load all the rest of the game data from somewhere
        progressDB.collection("puzzles").getDocuments() { (QuerySnapshot, err) in
            if let err = err {
                print("error retrieving documents: \(err)")
            } else {
                for document in QuerySnapshot!.documents {
                    let name = document.data()["name"] as! String
                    let timeInterval = document.data()["time"] as! TimeInterval
                    if let teaser = teasers[name] {
                        teaser.completed = true
                        teaser.time = timeInterval
                    }
                    
                }
            }
        }
    }
    
