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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.dealButton.setTitle("Play", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealButtonTapped(sender: UIButton) {
        var firstRandomNumber = arc4random_uniform(13)+1
        var firstCardString = String(format:"card%i", firstRandomNumber)
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        var secondRandomNumber = arc4random_uniform(13)+1
        var secondCardString = String(format:"card%i", secondRandomNumber)
        self.secondCardImageView.image = UIImage(named: secondCardString)
    }

}

