//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class TicTacToeBrain {
    var playerTurn = playerOfChoice.playerOne

}
enum playerOfChoice: CaseIterable{
    case playerOne
    case playerTwo
    
    mutating func turn(){
        switch self {
        case .playerOne:
            self = .playerTwo
        case .playerTwo:
            self = .playerOne
        }
    }
        func turnDoesWhat() -> UIImage{
            var result: UIImage!
            switch self {
            case .playerOne:
                result = UIImage(named: "X")
            case .playerTwo:
                result = UIImage(named: "O")
            }
            return result
        }
}
 //--------------------------------------------------------------------------------
    
func winChecker( Matrix: [[String]]) -> (String){
    var winOrLose = String()
    var checker = [String]()
    var checker2 = [String]()
    var checker3 = [String]()

    for firstArray in 0..<Matrix.count{
        if Matrix[firstArray] == ["X","X","X"]{
            winOrLose = "X Wins"
            
        }
        else if Matrix[firstArray] == ["O","O","O"]{
            winOrLose = "O Wins"
        }
        if Matrix[firstArray][firstArray] == "X"{
            checker.append("X")
            if checker == ["X","X","X"]{
                winOrLose = "X Wins"
            }
        }
           else if Matrix[firstArray][firstArray] == "O"{
                checker.append("O")
                if checker == ["O","O","O"]{
                    winOrLose = "O Wins"
                }
            }
         if Matrix[firstArray][2 - firstArray] == "X"{
            checker2.append("X")
            if checker2 == ["X","X","X"]{
                winOrLose = "X Wins"
            }
           else if Matrix[firstArray][2 - firstArray] == "O"{
                checker2.append("O")
                if checker2 == ["O","O","O"]{
                    winOrLose = "O Wins"
                }
        }
        
        }
    }
checker.removeAll()
checker2.removeAll()
    //-----------------------------------------------------------------------------
    for secondway in 0..<Matrix.count{
            if Matrix[secondway][0] == "X" {
                checker.append("X")
                if checker == ["X","X","X"]{
                    winOrLose = "X Wins"
                }
            }
            else if Matrix[secondway][0] == "O"{
                checker.append("O")
                if checker == ["O","O","O"]{
                    winOrLose = "O Wins"
                }
            
            }
            else{
                checker.removeAll()
        }
        //------------------------------------------------------------------------
        if Matrix[secondway][1] == "X" {
            checker2.append("X")
            if checker2 == ["X","X","X"]{
                winOrLose = "X Wins"
            }
        }
        else if Matrix[secondway][1] == "O"{
            checker2.append("O")
            if checker2 == ["O","O","O"]{
                winOrLose = "O Wins"
            }
            
        }
        else{
            checker2.removeAll()
        }
        
            //----------------------------------------------------------------------
        
        if Matrix[secondway][2] == "X" {
            checker3.append("X")
            if checker3 == ["X","X","X"]{
                winOrLose = "X Wins"
            }
        }
        else if Matrix[secondway][2] == "O"{
            checker3.append("O")
            if checker3 == ["O","O","O"]{
                winOrLose = "O Wins"
            }
            
        }
        else{
            checker3.removeAll()
        }
        //----------------------------------------------------------------------

        }
    return winOrLose
}

//if GameButton[0][0] == "X" &&  GameButton[1][1] == "X" && GameButton[2][2] == "X"{
//        print("player one wins")

