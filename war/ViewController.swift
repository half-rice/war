//
//  ViewController.swift
//  war
//
//  Created by surrus on 1/9/16.
//  Copyright © 2016 surrus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var backgroundImageView: UIImageView!
  @IBOutlet weak var firstCardImageView: UIImageView!
  @IBOutlet weak var secondCardImageView: UIImageView!
  @IBOutlet weak var dealButton: UIButton!
  
  @IBOutlet weak var playerScoreLabel: UILabel!
  @IBOutlet weak var enemyScoreLabel: UILabel!
  var playerScore:Int = 0
  var enemyScore:Int = 0
  
  var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card1"]
  
  func delay(delay:Double, closure:()->()) {
    dispatch_after(
      dispatch_time(
        DISPATCH_TIME_NOW,
        Int64(delay * Double(NSEC_PER_SEC))
      ),
      dispatch_get_main_queue(), closure)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func dealButtonTapped(sender: UIButton) {
    var firstRandomNumber = Int(arc4random_uniform(13))
    var firstCardString = self.cardNamesArray[firstRandomNumber]
    self.firstCardImageView.image = UIImage(named: firstCardString)
    
    var secondRandomNumber = Int(arc4random_uniform(13))
    var secondCardString = self.cardNamesArray[secondRandomNumber]
    delay(0.3){
      self.secondCardImageView.image = UIImage(named: secondCardString)
    }
      
    if firstRandomNumber > secondRandomNumber {
      self.playerScore += 1
      self.playerScoreLabel.text = String(self.playerScore)
    }
    else if firstRandomNumber == secondRandomNumber {
      
    }
    else {
      self.enemyScore += 1
      self.enemyScoreLabel.text = String(self.enemyScore)
    }
  }
    
}

