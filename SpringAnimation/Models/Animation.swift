//
//  Animation.swift
//  SpringAnimation
//
//  Created by Pavel Tsyganov on 24.11.2021.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var descriptionAnimation: String {
        """
            Preset: \(preset)
            Curve: \(curve)
            Force: \(String(format: "%.2f", force))
            Duration: \(String(format: "%.2f", duration))
            Delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(preset: DataManager.shared.animations.randomElement()?.rawValue ?? "fadeIn",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "linear",
                  force: Float.random(in: 0.3...1.6),
                  duration: Float.random(in: 0.7...2.5),
                  delay: Float.random(in: 0.2...0.4))
    }
}
