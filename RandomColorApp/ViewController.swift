//
//  ViewController.swift
//  RandomColorApp
//
//  Created by 최규현 on 2/21/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var rgbLabel: UILabel!
    @IBOutlet var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeButton(_ sender: Any) {
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let randomColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
        let red = Int(randomRed * 255)
        let green = Int(randomGreen * 255)
        let blue = Int(randomBlue * 255)
        
        colorView.backgroundColor = randomColor
        rgbLabel.text = "R: \(red), G: \(green), B: \(blue)"
    }
    @IBAction func resetButton(_ sender: Any) {
        colorView.backgroundColor = .white
        rgbLabel.text = "R: 255, G: 255, B: 255"
    }
    
}

