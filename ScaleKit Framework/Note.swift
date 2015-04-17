//
//  Note.swift
//
//  Created by Joshua Herkness on 11/12/14.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import UIKit


/**
Octave number coresponding to its integer counterpart
*/
public enum Octave: Int {
    
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
    
}

/**
Lower bound for the notes MIDI value.  Coresponds to the lowest possible note on a piano.

- Standard range for A MIDI value is 0 to 127.
*/
public let midiLower: Int = Int(0)

/**
Upper bound for the notes MIDI value.  Coresponds to the highest possible note on a piano.

- Standard range for A MIDI value is 0 to 127.
*/
public let midiUpper: Int = Int(127)

/**
Frequency of the concert pitch, in Hz.

- Standard concert pitch is A4, or 440 Hz.
*/
private let concertPitch: Double = Double(440)


/**
Note, which is composed of an pitch with an octave.
*/
class Note: NSObject {
   
    /**
    String value coresponding to the englishDesciption of a note.  Should be equal to the notes pitch's english description and octave.
    */
    var englishDescription: String = String()
    
    /**
    String value coresponding to the musicalDescription of a note.  Should be equal to the notes pitch's musical description and octave.
    */
    var musicalDescription: String = String()
    
    /**
    Octave value coresponding to the octave of the note.
    */
    var octave: Octave
    
    /**
    Pitch value coresponding to the pitch of the note
    */
    var pitch: Pitch!
    
    /**
    Int value coresponding to the midiValue of the note.
    
    - Standard range for A MIDI value is 0 to 127.
    */
    var midiValue: Int = Int()
    
    /**
    Double value coresponding to the frequency of the note.
    */
    var frequency: Double = Double()
    
    /**
    Creates an instance of Note.  Requires a pitch, as well as an octave.
    
    :param: pitch of type Pitch
    :param: octave of type Octave
    */
    init(pitch: Pitch, octave: Octave) {
        
        self.pitch = pitch
        self.octave = octave
        
        super.init()
        
        //Calculate the MIDI value
        self.midiValue = calculateMidiValue(pitch, octave: octave)
        
        //Calculate the frequency
        self.frequency = calculateFrequency(self.midiValue)
        
        //Calculate the english desciption
        self.englishDescription = calculateEnglishDescription(pitch, octave: octave)
        
        //Calculate the musical description
        self.musicalDescription = calculateMusicalDescription(pitch, octave: octave)
    }
    
    /**
    Calculates the MIDI value given an octave an a pitch.
    
    :param: pitch of type Pitch
    :param: octave of type Octave
    
    :returns: midiVaule of type Int
    */
    private func calculateMidiValue(pitch: Pitch, octave: Octave) -> Int{
        
        var midiValue: Int = Int()
        
        //Calculate the MIDI value
        midiValue = (octave.rawValue * 12) + pitch.getID()
        
        //Quick check to make sure the MIDI value is in bounds
        if !(midiValue >= midiLower && midiValue <= midiUpper){
            println("Error: Midi value out of bounds")
        }
        
        return midiValue
    }
    
    /**
    Calculates the MIDI value given a frequency.
    
    :param: frequency of type Double
    
    :returns: midiValue of type Int
    */
    private func calculateMidiValue(frequency: Double) -> Int{
        
        var midiValue: Int = Int()
        
        midiValue = Int((Double(12) * (log2(frequency / concertPitch))) + 69.0)
        
        return midiValue
    }
    
    
    /**
    Calculates the english description of a note.  Appends the octave to the pitches english description.
    
    :param: pitch of type Pitch
    :param: octave of type Octave
    
    :returns: englishDescription of type String
    */
    private func calculateEnglishDescription(pitch: Pitch, octave: Octave) -> String{
        
        var englishDescription: String = ""
        
        englishDescription += pitch.getEnglishDescription()
        
        englishDescription += " \(octave.rawValue)"
        
        return englishDescription
    }
    
    /**
    Calculates teh musical description of a note.  Appends the octave to the pitches musical description.
    
    :param: pitch of type Pitch
    :param: octave of type Octave
    
    :returns: musicalDescription of type String
    */
    private func calculateMusicalDescription(pitch: Pitch, octave: Octave) -> String{
        
        var musicalDescription: String = ""
        
        musicalDescription += pitch.getMusicalDescription()
        
        musicalDescription += "\(octave.rawValue)"
        
        return musicalDescription
    }
    
    /**
    Calculates the frequency of a note.  The calculation of frequency can bee seen in the image
    http://upload.wikimedia.org/math/7/3/1/7315f3b406d7e5443e2c9295b444bf46.png .
    Where p is the MIDI value of the note
    
    :param: midiValue of type Int
    
    :returns: frequency of type Double
    */
    private func calculateFrequency(midiValue: Int) -> Double {
        
        var frequency: Double =  Double()
        
        frequency = pow(Double(2), (Double(midiValue) - 69.0) / 12.0 ) * concertPitch
        
        return frequency
    }
        
    
}




