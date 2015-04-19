//
//  SKManager.swift
//  ScaleKit
//
//  Created by Joshua Herkness on 4/18/15.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import Foundation

public class SKManager: NSObject {
    
    // -----------------------------------------------------------------------------
    // MARK: Instance Variables
    // -----------------------------------------------------------------------------
    
    /// Scale instance variable
    public var scale: SKScale = SKScale()
    
    /// Tempo instance variable
    public var tempo: SKTempo = SKTempo()
    
    
    // -----------------------------------------------------------------------------
    // MARK: Initialization
    // -----------------------------------------------------------------------------
    
    /** Constructor using parts of a scale.
    
    :param: pitch       Pitch object
    :param: scaleType   ScaleType enum
    :param: startOctave startOctave enum
    :param: endOctave   endOctave enum
    
    :returns: SKManager object
    */
    public init(pitch: SKPitch, scaleType: SKScaleType, startOctave: SKOctave, endOctave: SKOctave) {
        
        // Do any initiallization here
        
        super.init()
    }
    
    /** Constructor using a Scale object.
    
    :param: scale Scale object
    
    :returns: SKManager object
    */
    public init(scale: SKScale) {
        
        // Do any initiallization here
        
        super.init()
    }
    
    // -----------------------------------------------------------------------------
    // MARK: Playback
    // -----------------------------------------------------------------------------
    
    /** Plays a scale
    */
    public func playScale() {
        
    }
    
    /** Loops a scale
    */
    public func loopScale() {
        
    }
    
    /** Loops a scale n amount of times
    */
    public func loopScale(n: Int) {
        
    }
    
    /** Resets a scale
    */
    public func resetScale() {
        
    }
    
    /** Plays a given step of the scale
    */
    public func playStepOfScale(n: Int) {
        
    }
    
    /** Plays multiple steps of the scale
    */
    public func playStepsOfScale(n: [Int]) {
        
    }
    
    /** Reverses the direction of the scale
    */
    public func reverseScale() {
        
    }
    
    /** Slows the scale one tempo marking
    */
    public func slowScale() {
        
    }
    
    /** Speeds the scale one tempo marking
    */
    public func speedScale() {
        
    }
    
    /**
    Stops a given step of the scale
    
    :param: n Step of scale
    */
    public func stopSetpOfScale(n: Int) {
        
    }
    
    /**
    Stops multiple steps of the scale
    
    :param: n Int array of steps in the scale
    */
    public func stopSetpsOfScale(n: [Int]) {
        
    }
    
    /** Stops a scale at its current step
    */
    public func stopScale() {
        
    }
    
    /** Resumes a scale at its last known step
    */
    public func resumeScale() {
        
    }
    
    /** Resumes a scale at a given step
    */
    public func resumeScaleAtStep(n: Int) {
        
    }
}



