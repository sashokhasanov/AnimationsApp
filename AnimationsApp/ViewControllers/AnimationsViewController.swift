//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Сашок on 11.01.2022.
//

import Spring
import CoreGraphics

class AnimationsViewController: UIViewController {

    // MARK: - IBOUtlets
    @IBOutlet weak var animatedView: SpringView!
    @IBOutlet weak var animationButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Private properties
    private var currentAnimation = DataManager.instance.getRandomAnimation()

    // MARK: - IBActions
    @IBAction func buttonPressed() {
        prepareForAnimation()
        animatedView.animate()
        
        currentAnimation = DataManager.instance.getRandomAnimation()
        updateButton()
    }

    // MARK: - Private methods
    private func prepareForAnimation() {
        updateAnimatedView()
        updateDescriptionLabel()
    }
    
    private func updateAnimatedView() {
        animatedView.animation = currentAnimation.animation
        animatedView.curve = currentAnimation.curve
        animatedView.force = CGFloat(currentAnimation.force)
        animatedView.duration = CGFloat(currentAnimation.duration)
        animatedView.delay = CGFloat(currentAnimation.delay)
    }
    
    private func updateDescriptionLabel() {
        descriptionLabel.text = currentAnimation.description
    }
    
    private func updateButton() {
        animationButton.setTitle(currentAnimation.animation, for: .normal)
    }
}
