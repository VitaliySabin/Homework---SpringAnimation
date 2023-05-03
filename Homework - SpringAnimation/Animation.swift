//
//  Animation.swift
//  Homework - SpringAnimation
//
//  Created by Виталий Сабин on 03.05.2023.
//

struct Animation {
    let preset: [String]
    let curve: [String]
    
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let animationPreset = AnimationStore.shared.animationPreset.shuffled()
        let animationCurve = AnimationStore.shared.animationCurve.shuffled()
        let force = Double.random(in: 0.5...1.5)
        let duration = Double.random(in: 0.5...1.5)
        let delay = Double.random(in: 0.5...1)
        
        return Animation(
            preset: animationPreset,
            curve: animationCurve,
            force: force,
            duration: duration,
            delay: delay
        )
    }
}
