//
//  SimpleParallax.swift
//  SimpleParallax
//
//  Created by Julian Praest on 9/21/18.
//  Copyright © 2018 com.joolean.SimpleParallax. All rights reserved.
//

import UIKit

enum ParallaxStrength {
    case Low
    case Mid
    case High
}

enum PxMotionDirection {
    case xMotion
    case yMotion
}

extension UIView {
    /*
     Explanation:
     Background should have the strongest Parallaxeffect;
     Foreground should have the lowest Parallaxeffect;
     Background should have a 'medium' Parallaxeffect;
     */
    func addBackgroundPxEffect(strength: ParallaxStrength = ParallaxStrength.Mid) {
        
        removePreviousMotionEffects()
        
        var minValue = CGFloat(-50.0)
        switch strength {
        case ParallaxStrength.High:
            minValue = CGFloat(-65.0)
            break
        case ParallaxStrength.Low:
            minValue = CGFloat(-35.0)
            break
        default:
            break
        }
        let maxValue = -minValue
        let motionEffectGroup = UIMotionEffectGroup()
        let xMotion = createMotionEffect(motionDirection: .xMotion, minValue: minValue, maxValue: maxValue)
        let yMotion = createMotionEffect(motionDirection: .yMotion, minValue: minValue, maxValue: maxValue)
        motionEffectGroup.motionEffects = [yMotion, xMotion]
        self.addMotionEffect(motionEffectGroup)
    }
    
    func addMiddlegroundPxEffect(strength: ParallaxStrength = ParallaxStrength.Mid) {
        
        removePreviousMotionEffects()
        
        var minValue = CGFloat(-20.0)
        switch strength {
        case ParallaxStrength.High:
            minValue = CGFloat(-28.0)
            break
        case ParallaxStrength.Low:
            minValue = CGFloat(-12.0)
            break
        default:
            break
        }
        let maxValue = -minValue
        let motionEffectGroup = UIMotionEffectGroup()
        let xMotion = createMotionEffect(motionDirection: .xMotion, minValue: minValue, maxValue: maxValue)
        let yMotion = createMotionEffect(motionDirection: .yMotion, minValue: minValue, maxValue: maxValue)
        motionEffectGroup.motionEffects = [yMotion, xMotion]
        self.addMotionEffect(motionEffectGroup)
    }
    
    func addForegroundPxEffect(strength: ParallaxStrength = ParallaxStrength.Mid) {
        
        removePreviousMotionEffects()
        
        var minValue = CGFloat(-10.0)
        switch strength {
        case ParallaxStrength.High:
            minValue = CGFloat(-15.0)
            break
        case ParallaxStrength.Low:
            minValue = CGFloat(-5.0)
            break
        default:
            break
        }
        let maxValue = -minValue
        let motionEffectGroup = UIMotionEffectGroup()
        let xMotion = createMotionEffect(motionDirection: .xMotion, minValue: minValue, maxValue: maxValue)
        let yMotion = createMotionEffect(motionDirection: .yMotion, minValue: minValue, maxValue: maxValue)
        motionEffectGroup.motionEffects = [yMotion, xMotion]
        self.addMotionEffect(motionEffectGroup)
    }
    
    func removePreviousMotionEffects() {
        self.motionEffects.removeAll()
    }
}

fileprivate func createMotionEffect (motionDirection: PxMotionDirection, minValue: CGFloat, maxValue: CGFloat) -> UIMotionEffect {
    if motionDirection == .xMotion {
        let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = minValue
        xMotion.maximumRelativeValue = maxValue
        
        return xMotion
    } else {
        let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = minValue
        yMotion.maximumRelativeValue = maxValue
        
        return yMotion
    }
}
