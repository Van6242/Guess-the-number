//
//  ViewController.swift
//  Guess the number
//
//  Created by  on 2/22/22 22:22.22
//

import UIKit

class ViewController: UIViewController

{
    var rand = Int.random(in: 1...100)
        
    
  
    @IBOutlet weak var hLable: UILabel!
    @IBOutlet weak var guessfield: UITextField!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //get random number
           
    }
    
    
    
    @IBAction func myButton(_ sender: Any)
    {
    //get number from textfield
        print(rand)
        
        var guess = Int(guessfield.text!) ?? 0
            print(guess)
        
    //compare the numbers
        if rand < guess
        {
            hLable.text = "Lower"
            
            
        }
        else if rand > guess
        {
            hLable.text = "higher"
        }
        else
        {
            hLable.text = "CORECT!!"
            reset()
           
        }
        
    }
    
    
    func reset()
    {
        rand = Int.random(in: 1...100)
        hLable.text = ""
        
    }
    
}


import SwiftUI
import ConfettiSwiftUI
