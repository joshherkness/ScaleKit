//
//  SKScale.swift
//  ScaleKit
//
//  Created by Joshua Herkness on 11/12/14.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import UIKit

public class SKScale: NSObject {
    
    // -----------------------------------------------------------------------------
    // MARK: Instance Variables
    // -----------------------------------------------------------------------------
    
    /// ScaleType value which reperesents the core foundation of the scale.
    var scaleType: SKScaleType
    
    /// Octave value which represents the starting octave for the scale.
    var startOctave: SKOctave
    
    /// Octave value which represents the ending octave for the scale.
    var endOctave: SKOctave
    
    /// Tonic value which represents the 0th octave MIDI ID for the tonic.
    var tonicId: SKTonic
    
    /// Note value representing the tonic of the scale.
    //var tonicNote: Note
    
    /**
    String value containing the musical description for the scale.
    Should be composed of a start note, along with a scale type.
    */
    var musicalDescription: String = String()
    
    /// [Note] array value listing every single note in the scale.  Complete from lowest octave to highest octave.
    var noteArray: [SKNote] = []
    
    // -----------------------------------------------------------------------------
    // MARK: Initialization
    // -----------------------------------------------------------------------------
    
    override init() {
        self.scaleType = SKScaleType.Major()
        self.startOctave = SKOctave.Three
        self.endOctave = SKOctave.Five
        self.tonicId = SKTonic.One
    }
    
    init(scaleType: SKScaleType, tonicId:SKTonic, startOctave: SKOctave, endOctave: SKOctave) {
        
        self.scaleType = scaleType
        self.startOctave = startOctave
        self.endOctave = endOctave
        self.tonicId = tonicId
        
        super.init()
    }
    
    // -----------------------------------------------------------------------------
    // MARK: Calculations
    // -----------------------------------------------------------------------------
    
    private func calculateNotes() {
        
    }
    
    
    // -----------------------------------------------------------------------------
    // MARK: Setters & Getters
    // -----------------------------------------------------------------------------
    
    /**
    Retrieves the tonics id.  
    
    - This can be one of 12 differnet integer numbers coresponding to the 0th octave midi value.
    
    :returns: tonicId Tonic
    */
    func getTonicId() -> SKTonic {
        return tonicId
    }
    
    func getMusicalDescription() -> String {
        return musicalDescription
    }
    
    func getStartOctave() -> SKOctave {
        return startOctave
    }
    
    func getEndOctave() -> SKOctave {
        return endOctave
    }
    
    func numberOfOctaves() -> Int {
        return endOctave.rawValue - startOctave.rawValue
    }
    
    
    
}
