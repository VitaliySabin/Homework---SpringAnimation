//
//  Animation.swift
//  Homework - SpringAnimation
//
//  Created by Виталий Сабин on 03.05.2023.
//

struct Animation {
    let preset: String
    let curve: String
    
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
preset: \(preset)
curve: \(curve)
force: \(String(format:"%.2f", force))
duration: \(String(format:"%.2f", duration))
delay: \(String(format:"%.2f", delay))
"""
    }
    
    static func getAnimations() -> [Animation] {
        let animationStore = AnimationStore.shared
        
        let animationPresets = animationStore.animationPreset.shuffled()
        let animationCurves = animationStore.animationCurve.shuffled()
        
        var animations: [Animation] = []
        
        let iterationCount = min(animationPresets.count, animationCurves.count)
        
        for index in 0...iterationCount - 1 {
            let animation = Animation(
                preset: animationPresets[index],
                curve: animationCurves[index],
                force: Double.random(in: 0.5...1.5),
                duration: Double.random(in: 0.5...1.5),
                delay: Double.random(in: 0.5...1)
            )
            
            animations.append(animation)
        }
        return animations
    }
}
