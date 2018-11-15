//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var counter = 0
    var gameTracker: TicTacToeBrain = TicTacToeBrain()
    var ticTacToe = [["_","_","_"],
                 ["_","_","_"],
                 ["_","_","_"]]
    @IBOutlet weak var turnTracker: UILabel!
    @IBOutlet weak var WinOrDraw: UILabel!
    @IBOutlet var allTheButtons: [UIButton]!
    @IBOutlet weak var playAgain: UIButton!
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    turnTracker.text = "Player One turn"
    }
      @IBAction func gameBoard(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false

    }
    
    @IBAction func XandOs(_ sender: GameButton) {
        sender.setImage(gameTracker.playerTurn.turnDoesWhat(), for: .normal)
        sender.isUserInteractionEnabled = false
        if gameTracker.playerTurn == .playerOne{
ticTacToe[sender.row][sender.col] = "X"
            turnTracker.text = "Player Two turn"
            counter += 1
    }
    
        else if gameTracker.playerTurn == .playerTwo{
            ticTacToe[sender.row][sender.col] = "O"
            turnTracker.text = "Player One turn"
            counter += 1
            //this is player one
        }
        gameTracker.playerTurn.turn()
        WinOrDraw.text = winChecker(Matrix: ticTacToe)
        print(ticTacToe)
        
        if WinOrDraw.text != "" || counter >= 9{
            allTheButtons.forEach(){$0.isUserInteractionEnabled = false}
            playAgain.isHidden = false
        }
         if counter == 9 && WinOrDraw.text == ""{
            WinOrDraw.text = "Its a Draw stand down"
            playAgain.isHidden = false

        }
        
}
    @IBAction func newGame(_ sender: UIButton) {
        ticTacToe = [["_","_","_"],
                     ["_","_","_"],
                     ["_","_","_"]]
        for buttons in allTheButtons{
            buttons.setImage(nil, for: .normal)

        }
        playAgain.isHidden = true
        allTheButtons.forEach(){$0.isUserInteractionEnabled = true}
            WinOrDraw.text = ""
        turnTracker.text = "Player One turn"
            counter = 0
        gameTracker.playerTurn = .playerOne
    }
    
    
}

