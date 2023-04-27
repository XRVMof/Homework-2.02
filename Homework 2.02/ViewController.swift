//
//  ViewController.swift
//  Homework 2.02
//
//  Created by 65 on 18.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var redSignalView: UIView!
    @IBOutlet weak var yellowSignalView: UIView!
    @IBOutlet weak var greenSignalView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private let signalLightIsOn: CGFloat = 1
    private let signalLightIsOff: CGFloat = 0.3

    override func viewDidLoad() {
        super.viewDidLoad()
        redSignalView.layer.cornerRadius = redSignalView.frame.width / 2
        yellowSignalView.layer.cornerRadius = yellowSignalView.frame.width / 2
        greenSignalView.layer.cornerRadius = greenSignalView.frame.width / 2
        
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        greenSignalView.alpha = signalLightIsOn
        if yellowSignalView.alpha == signalLightIsOn {
            yellowSignalView.alpha = signalLightIsOff
            redSignalView.alpha = signalLightIsOff
            greenSignalView.alpha = signalLightIsOn
        } else if redSignalView.alpha == signalLightIsOn {
            redSignalView.alpha = signalLightIsOff
            greenSignalView.alpha = signalLightIsOff
            yellowSignalView.alpha = signalLightIsOn
        } else if greenSignalView.alpha == signalLightIsOn {
            greenSignalView.alpha = signalLightIsOff
            yellowSignalView.alpha = signalLightIsOff
            redSignalView.alpha = signalLightIsOn
        }
    }
}


