//
//  ViewController.swift
//  Homework 2.02
//
//  Created by 65 on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSignalView: UIView!
    @IBOutlet weak var yellowSignalView: UIView!
    @IBOutlet weak var greenSignalView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignalView.layer.cornerRadius = redSignalView.frame.width / 2
        yellowSignalView.layer.cornerRadius = yellowSignalView.frame.width / 2
        greenSignalView.layer.cornerRadius = greenSignalView.frame.width / 2
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        greenSignalView.alpha = 1
        if yellowSignalView.alpha == 1 {
            yellowSignalView.alpha = 0.3
            redSignalView.alpha = 0.3
            greenSignalView.alpha = 1
        } else if redSignalView.alpha == 1 {
            redSignalView.alpha = 0.3
            greenSignalView.alpha = 0.3
            yellowSignalView.alpha = 1
        } else if greenSignalView.alpha == 1 {
            greenSignalView.alpha = 0.3
            yellowSignalView.alpha = 0.3
            redSignalView.alpha = 1
        }
    }
}


