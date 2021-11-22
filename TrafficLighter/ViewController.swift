//
//  ViewController.swift
//  TrafficLighter
//
//  Created by Дмитрий on 22.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    enum TrafficColors {
        case red, yellow, green
    }
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yelloView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    let activeViewAlpha = 1.0
    let disactiveViewAlpha = 0.3
    var currentColor: TrafficColors  = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        redView.alpha = disactiveViewAlpha
        yelloView.alpha = disactiveViewAlpha
        greenView.alpha = disactiveViewAlpha
        
        
    }

    @IBAction func buttonTapped() {
        startButton.setTitle("Next", for: .normal)
        switch currentColor {
        case .red:
            currentColor = .yellow
            redView.alpha = activeViewAlpha
            greenView.alpha = disactiveViewAlpha
        case .yellow:
            currentColor = .green
            yelloView.alpha = activeViewAlpha
            redView.alpha = disactiveViewAlpha
        case .green:
            currentColor = .red
            yelloView.alpha = disactiveViewAlpha
            greenView.alpha = activeViewAlpha
        }
    }
    
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.height / 2
        yelloView.layer.cornerRadius = yelloView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
    }
}

