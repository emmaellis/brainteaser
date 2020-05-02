//
//  ListOfPuzzles.swift
//  brainteasers
//
//  Created by Emma Ellis on 4/28/20.
//  Copyright © 2020 Emma Ellis. All rights reserved.
//

import Foundation

var teasers: [String : Brainteaser] = [
    "Telephone Numbers": Brainteaser(name: "Telephone Numbers", teaser: "What number do you get when you multiply all of the numbers found on a telephone’s keypad?", answer: "0", difficulty: 1, hint: "what digits are there on a keypad?"),
    "Change" : Brainteaser(name: "Change", teaser: "Mark went to a restaurant for dinner last night.  When he received his check he paid with a hundred dollar bill. When the waiter returned his change, Mark received one of every denomination of currency under one hundred dollars. What was the total cost of Mark s meal?", answer: "13.59", difficulty: 2, hint: ""),
    "What's 5?" : Brainteaser(name: "What's 5?", teaser: "If 1 = 5, 2 = 10, 3 = 15, and 4 = 20. What does 5 equal?", answer: "1", difficulty: 2, hint: "Read the question again."),
    "What number am I?" : Brainteaser(name: "What number am I?", teaser: "I am an odd number, if you take away one letter then I become even. What number am I?", answer: "7", difficulty: 1, hint: "What letters could be added to 'even' to make a number?"),
    "Cats and rats" : Brainteaser(name: "Cats and rats", teaser: "If 3 cats can kill 3 rats in 3 minutes, how many minutes will it take 100 cats to kill 100 rats?", answer: "3", difficulty: 2, hint: "Write it out if you're stuck"),
    "Sale!" : Brainteaser(name: "Sale!", teaser: "A shopkeeper decides to put all the items on sale for a week for 20% off. A week later he decides to put the items pack to their original prices. What percentage must he now increase the price of the items?", answer: "25", difficulty: 1, hint: "Think about whether it makes sense for it to be 20%"),
    "How many legs?" : Brainteaser(name: "How many legs?", teaser: "You walk into a room where there are seven girls.  Each girl has seven bags.  Inside each bag are seven adult cats.  Each adult cat has seven kittens.Assuming no one is missing any limbs, how many legs are in the room?", answer: "10992", difficulty: 3, hint: "You'll probably need a piece of paper and a pen for this one"),
    
    "How many Month?" : Brainteaser(name: "How many Month?", teaser: "While some months have just 30 days,others have 31 days.How many months have 28 days?", answer: "12", difficulty: 1, hint: "Don't over count!"),
    "Seventeen sheep" : Brainteaser(name: "Seventeen sheep?", teaser: "A farmer has seventeen sheep. All but nine of them die. How many sheep does he have left?", answer: "9", difficulty: 1, hint: "Die=Left?"),
    "Chessboard" : Brainteaser(name: "Chessboard", teaser: "How many squares are there on a chessboard?", answer: "204", difficulty: 3, hint: "The answer is not 64."),
     "Candles in Dining Room" : Brainteaser(name: "Candles in Dining Room", teaser: "10 candles stand burning in a dining room. A strong breeze blows in through an open window and extinguishes 3 of them. Assuming the wind doesn't extinguish any more candles, how many candles do you have left in the end?", answer: "3", difficulty: 2, hint: "The 7 candles that manage to stay lit will melt down completely."),
    "How old is the Brother?" : Brainteaser(name: "How old is the Brother?", teaser: "A boy is 2 years old, his brother is half as old as him. When the first boy is 100, how old will his brother be?", answer: "99", difficulty: 2, hint: "Minus half year"),
    "Value of 5" : Brainteaser(name: "Value of 5", teaser: "Give the place value of 5 in the number 254,879.", answer: "50000", difficulty: 2, hint: "Minus half year"),
    "The Number in Sequence" : Brainteaser(name: "How old is the Brother?", teaser: "What is the next number in this sequence: 2, 5, 9, 14,...", answer: "20", difficulty: 3, hint: "(2+3=5; 5+4=9; 9+5=14; 14+6=20; and so on)"),
    "Inches in a Foot" : Brainteaser(name: "Inches in a Foot", teaser: "How many inches are in a foot?", answer: "12", difficulty: 1, hint: "2 foot = 24 inches"),
    "Movie time!" : Brainteaser(name: "Movie time!", teaser: "If a movie starts in an hour and a half, how many minutes do you have to wait to see it?", answer: "90", difficulty: 2, hint: "Don't count waiting time."),
]
var names: [String] = ["Telephone Numbers",
                       "Change",
                       "What's 5?",
                       "What number am I?",
                       "Cats and rats",
                       "Sale!",
                       "How many legs?",
                       "How many Month?",
                       "Seventeen sheep",
                       "Chessboard",
                       "Candles in Dining Room",
                       "How old is the Brother?",
                       "Value of 5",
                       "The Number in Sequence",
                       "Inches in a Foot",
                       "Movie time!"
]
