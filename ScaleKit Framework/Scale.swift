//
//  Scale.swift
//
//  Created by Joshua Herkness on 11/12/14.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import UIKit

/**
Tonic pitch ID

Coresponding to the Zero'th octave midi value

- Zero:     Tonic pitch id of 0
- One:      Tonic pitch id of 1
- Two:      Tonic pitch id of 2
- Three:    Tonic pitch id of 3
- Four:     Tonic pitch id of 4
- Five:     Tonic pitch id of 5
- Six:      Tonic pitch id of 6
- Seven:    Tonic pitch id of 7
- Eight:    Tonic pitch id of 8
- Nine:     Tonic pitch id of 9
- Ten:      Tonic pitch id of 10
- Eleven:   Tonic pitch id of 11

*/
enum Tonic : Int {
    
    case Zero = 0
    case One = 1
    case Two = 2
    case Three = 3
    case Four = 4
    case Five = 5
    case Six = 6
    case Seven = 7
    case Eight = 8
    case Nine = 9
    case Ten = 10
    case Eleven = 11
}

/**
*  Scale
*/
class Scale: NSObject {
    
    /// ScaleType value which reperesents the core foundation of the scale.
    var scaleType: ScaleType
    
    /// Octave value which represents the starting octave for the scale.
    var startOctave: Octave
    
    /// Octave value which represents the ending octave for the scale.
    var endOctave: Octave
    
    /// Tonic value which represents the 0th octave MIDI ID for the tonic.
    var tonicId: Tonic
    
    /// Note value representing the tonic of the scale.
    //var tonicNote: Note
    
    /**
    String value containing the musical description for the scale.
    Should be composed of a start note, along with a scale type.
    */
    var musicalDescription: String = String()
    
    /// [Note] array value listing every single note in the scale.  Complete from lowest octave to highest octave.
    var noteArray: [Note]
    
    init(scaleType: ScaleType, tonicId:Tonic, startOctave: Octave, endOctave: Octave) {
        
        self.scaleType = scaleType
        self.startOctave = startOctave
        self.endOctave = endOctave
        self.tonicId = tonicId
        
        noteArray = []
        
        super.init()
    }
    
    private func calculateNotes() {
        
    }
    
    /**
    Retrieves the tonics id.  
    
    - This can be one of 12 differnet integer numbers coresponding to the 0th octave midi value.
    
    :returns: tonicId Tonic
    */
    func getTonicId() -> Tonic {
        return tonicId
    }
    
    func getMusicalDescription() -> String {
        return musicalDescription
    }
    
    func getStartOctave() -> Octave {
        return startOctave
    }
    
    func getEndOctave() -> Octave {
        return endOctave
    }
    
    func numberOfOctaves() -> Int {
        return endOctave.rawValue - startOctave.rawValue
    }
    
    
    
}
