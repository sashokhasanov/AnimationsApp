//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Сашок on 11.01.2022.
//

import Spring

class ViewController: UIViewController {

    // MARK: - IBOUtlets
    @IBOutlet weak var animatedView: SpringView!
    @IBOutlet weak var animationButton: UIButton!
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    // MARK: - Private properties
    private var nextPreset = ""
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nextPreset = getRandomPreset()
    }

    // MARK: - IBActions
    @IBAction func buttonPressed() {
        prepareForAnimation()
        animatedView.animate()
    }

    // MARK: - Private methods
    private func prepareForAnimation() {
        updateAnimatedView()
        updateLabels()
        
        nextPreset = getRandomPreset()
        updateButton()
    }
    
    private func updateAnimatedView() {
        animatedView.animation = nextPreset
        animatedView.curve = (Spring.AnimationCurve.allCases.randomElement() ?? .easeIn).rawValue
        animatedView.force = CGFloat.random(in: 0.5...1)
        animatedView.duration = CGFloat.random(in: 0.5...1)
        animatedView.delay = CGFloat.random(in: 0...0.2)
    }
    
    private func updateLabels() {
        presetLabel.text = "Preset: \(animatedView.animation)"
        curveLabel.text = "Curve: \(animatedView.curve)"
        forceLabel.text = String(format: "Force: %.2f", animatedView.force)
        durationLabel.text = String(format: "Duration: %.2f", animatedView.duration)
        delayLabel.text = String(format: "Delay: %.2f", animatedView.delay)
    }
    
    private func updateButton() {
        animationButton.setTitle(nextPreset, for: .normal)
    }
    
    private func getRandomPreset() -> String {
        return Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? ""
    }
}

