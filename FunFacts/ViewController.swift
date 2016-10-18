//
//  ViewController.swift
//  FunFacts
//
//  Created by Ken Burkhardt on 8/23/16.
//  Copyright © 2016 KenBurkhardt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var funFactButton: UIView!
    @IBOutlet weak var funFactLabel: UILabel!
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFunFact() {
        let randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactLabel.text = factBook.randomFact()
        funFactButton.tintColor = randomColor
    }
}

