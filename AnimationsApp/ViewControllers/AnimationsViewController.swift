//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Сашок on 11.01.2022.
//

import Spring

class AnimationsViewController: UIViewController {

    // MARK: - IBOUtlets
    @IBOutlet weak var animatedView: SpringView!
    @IBOutlet weak var animationButton: UIButton!
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    // MARK: - Private properties
    private var currentAnimation = AnimationModel.getRandomAnimation()

    // MARK: - IBActions
    @IBAction func buttonPressed() {
        prepareForAnimation()
        animatedView.animate()
        
        currentAnimation = AnimationModel.getRandomAnimation()
        updateButton()
    }

    // MARK: - Private methods
    private func prepareForAnimation() {
        updateAnimatedView()
        updateLabels()
    }
    
    private func updateAnimatedView() {
        animatedView.animation = currentAnimation.animation
        animatedView.curve = currentAnimation.curve
        animatedView.force = currentAnimation.force
        animatedView.duration = currentAnimation.duration
        animatedView.delay = currentAnimation.delay
    }
    
    private func updateLabels() {
        presetLabel.text = "Preset: \(currentAnimation.animation)"
        curveLabel.text = "Curve: \(currentAnimation.curve)"
        forceLabel.text = String(format: "Force: %.2f", currentAnimation.force)
        durationLabel.text = String(format: "Duration: %.2f", currentAnimation.duration)
        delayLabel.text = String(format: "Delay: %.2f", currentAnimation.delay)
    }
    
    private func updateButton() {
        animationButton.setTitle(currentAnimation.animation, for: .normal)
    }
}

