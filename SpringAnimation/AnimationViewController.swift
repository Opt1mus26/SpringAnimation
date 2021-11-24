//
//  AnimationViewController.swift
//  SpringAnimation
//
//  Created by Pavel Tsyganov on 24.11.2021.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet var animationDescriptionLabel: SpringLabel!
    @IBOutlet var animationView: SpringView!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 80
    }

    @IBAction func getAnimationButton(_ sender: SpringButton) {
        
        animationDescriptionLabel.text = animation.descriptionAnimation
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Go \(animation.preset)", for: .normal)
    }
}

