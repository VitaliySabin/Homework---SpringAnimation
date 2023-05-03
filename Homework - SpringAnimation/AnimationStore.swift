//
//  AnimationStore.swift
//  Homework - SpringAnimation
//
//  Created by Виталий Сабин on 03.05.2023.
//

import SpringAnimation

final class AnimationStore {
    
    static let shared = AnimationStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
