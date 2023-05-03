//
//  ViewController.swift
//  Homework - SpringAnimation
//
//  Created by Виталий Сабин on 03.05.2023.
//

import UIKit
import SpringAnimation

final class SpringAnimationViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var runButton: SpringButton!
    
    private var currentAnimation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel(about: currentAnimation)
    }
    
    @IBAction func animationButtonPressed() {
        startAnimation()
        updateLabel(about: currentAnimation)
        changeAnimation()
    }
    
    private func startAnimation() {
        animationView.animation = currentAnimation.preset
        animationView.curve = currentAnimation.curve
        animationView.force = currentAnimation.force
        animationView.duration = currentAnimation.duration
        animationView.delay = currentAnimation.delay
        animationView.animate()
    }
    
    private func changeAnimation() {
        let nextAnimation = Animation.getAnimation()
        runButton.setTitle("Run: \(nextAnimation.preset)", for: .normal)
        currentAnimation = nextAnimation
    }
    
    private func updateLabel(about animation: Animation) {
        animationLabel.text = animation.description
    }
}
