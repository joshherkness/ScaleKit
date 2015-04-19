//
//  SKPitch.swift
//  ScaleKit
//
//  Created by Joshua Herkness on 11/12/14.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import UIKit

public class SKPitch: NSObject {
    
    // -----------------------------------------------------------------------------
    // MARK: Instance Variables
    // -----------------------------------------------------------------------------
    
    /// Integer value corresponding to the 0'th octave MIDI value.
    var id: Int = Int()
    
    /// String variable describing the pitch in english.
    var englishDescription: String = String()
    
    /// String variable describing the pitch in common musical notation.
    lazy var musicalDescription: String = String()
    
    /// PitchType coresponding to the type of the pitch.  Could be Natural or Accidental.
    var pitchType: SKPitchType!
    
    /// Pitch object corresponding to the natural pitch assosiated with the pitch.
    /// Will be Null if the pitch is already a natural pitch.
    var linkedNaturalPitch: SKPitch!
    
    // -----------------------------------------------------------------------------
    // MARK: Initialization
    // -----------------------------------------------------------------------------
    
    /** Default constructor for an SKPitch.
    
    :param: musicalDescription The Musical Description/Name of pitch.
    :param: englishDescription The English Description/Name of pitch.
    :param: id The Corresponding Zero'th octave MIDI values.
    :param: pitchType PitchType coresponding to the type of the pitch.
    :param: linkedNaturalPitch itch object corresponding to the natural pitch assosiated with the pitch.
    
    -nil if the pitch is already natural
    
    :returns: SKPitch
    */
    public init(musicalDescription: String, englishDescription: String, id: Int, pitchType: SKPitchType, linkedNaturalPitch: SKPitch?) {
        
        super.init()
        
        self.musicalDescription = musicalDescription
        self.englishDescription = englishDescription
        self.id = id
        self.pitchType = pitchType
        self.linkedNaturalPitch = linkedNaturalPitch
    }
    
    // -----------------------------------------------------------------------------
    // MARK: Functions
    // -----------------------------------------------------------------------------
    
    /** Retrieves the english descriptiopn of a pitch,
        setting the default description of a pitch to return the english description.
    
    :returns: englishDescription String
    */
    public func toString() -> String {
        return englishDescription
    }
    
    /** Compairs two pitches by id.
    
    :returns: Bool Value
    */
    public func equalsPitch(pitch: SKPitch) -> Bool{
        if (id == pitch.id){
            return true
        }
        return false
    }
    
    // -----------------------------------------------------------------------------
    // MARK: Class Functions
    // -----------------------------------------------------------------------------
    
    //
    // Natural Pitches.
    // Class functions which return natural type pitches.
    //
    class func A() -> SKPitch {
        return SKPitch(musicalDescription: "A", englishDescription: "A", id: 9, pitchType: SKPitchType.Natural, linkedNaturalPitch: nil)
    }
    class func B() -> SKPitch {
        return SKPitch(musicalDescription: "B", englishDescription: "B", id: 11, pitchType: SKPitchType.Natural, linkedNaturalPitch: nil)
    }
    class func C() -> SKPitch {
        return SKPitch(musicalDescription: "C", englishDescription: "C", id: 0, pitchType: SKPitchType.Natural, linkedNaturalPitch: nil)
    }
    class func D() -> SKPitch {
        return SKPitch(musicalDescription: "D", englishDescription: "D", id: 2, pitchType: SKPitchType.Natural, linkedNaturalPitch: nil)
    }
    class func E() -> SKPitch {
        return SKPitch(musicalDescription: "E", englishDescription: "E", id: 4, pitchType: SKPitchType.Natural, linkedNaturalPitch: nil)
    }
    class func F() -> SKPitch {
        return SKPitch(musicalDescription: "F", englishDescription: "F", id: 5, pitchType: SKPitchType.Natural, linkedNaturalPitch: nil)
    }
    class func G() -> SKPitch {
        return SKPitch(musicalDescription: "G", englishDescription: "G", id: 7, pitchType: SKPitchType.Natural, linkedNaturalPitch: nil)
    }
    
    //
    // A Pitches.
    // Class functions which return pitches of linked natural pitch A.
    //
    class func AFlatFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Abb", englishDescription: "A Flat Flat", id: 7, pitchType: SKPitchType.Accidental, linkedNaturalPitch: A())
    }
    class func AFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Ab", englishDescription: "A Flat", id: 8, pitchType: SKPitchType.Accidental, linkedNaturalPitch: A())
    }
    class func ASharp() -> SKPitch {
        return SKPitch(musicalDescription: "A#", englishDescription: "A Sharp", id: 10, pitchType: SKPitchType.Accidental, linkedNaturalPitch: A())
    }
    class func ASharpSharp() -> SKPitch {
        return SKPitch(musicalDescription: "A##", englishDescription: "A Sharp Sharp", id: 11, pitchType: SKPitchType.Accidental, linkedNaturalPitch: A())
    }
    
    //
    // B Pitches.
    // Class functions which return pitches of linked natural pitch B.
    //
    class func BFlatFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Bbb", englishDescription: "B Flat Flat", id: 9, pitchType: SKPitchType.Accidental, linkedNaturalPitch: B())
    }
    class func BFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Bb", englishDescription: "B Flat", id: 10, pitchType: SKPitchType.Accidental, linkedNaturalPitch: B())
    }
    class func BSharp() -> SKPitch {
        return SKPitch(musicalDescription: "B#", englishDescription: "B Sharp", id: 0, pitchType: SKPitchType.Accidental, linkedNaturalPitch: B())
    }
    class func BSharpSharp() -> SKPitch {
        return SKPitch(musicalDescription: "B##", englishDescription: "B Sharp Sharp", id: 1, pitchType: SKPitchType.Accidental, linkedNaturalPitch: B())
    }
    
    //
    // C Pitches.
    // Class functions which return pitches of linked natural pitch C.
    //
    class func CFlatFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Cbb", englishDescription: "C Flat Flat", id: 10, pitchType: SKPitchType.Accidental, linkedNaturalPitch: C())
    }
    class func CFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Cb", englishDescription: "C Flat", id: 11, pitchType: SKPitchType.Accidental, linkedNaturalPitch: C())
    }
    class func CSharp() -> SKPitch {
        return SKPitch(musicalDescription: "C#", englishDescription: "C Sharp", id: 1, pitchType: SKPitchType.Accidental, linkedNaturalPitch: C())
    }
    class func CSharpSharp() -> SKPitch {
        return SKPitch(musicalDescription: "C##", englishDescription: "C Sharp Sharp", id: 2, pitchType: SKPitchType.Accidental, linkedNaturalPitch: C())
    }
    
    //
    // D Pitches.
    // Class functions which return pitches of linked natural pitch D.
    //
    class func DFlatFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Dbb", englishDescription: "D Flat Flat", id: 0, pitchType: SKPitchType.Accidental, linkedNaturalPitch: D())
    }
    class func DFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Db", englishDescription: "D Flat", id: 1, pitchType: SKPitchType.Accidental, linkedNaturalPitch: D())
    }
    class func DSharp() -> SKPitch {
        return SKPitch(musicalDescription: "D#", englishDescription: "D Sharp", id: 3, pitchType: SKPitchType.Accidental, linkedNaturalPitch: D())
    }
    class func DSharpSharp() -> SKPitch {
        return SKPitch(musicalDescription: "D##", englishDescription: "D Sharp Sharp", id: 4, pitchType: SKPitchType.Accidental, linkedNaturalPitch: D())
    }
    
    //
    // E Pitches.
    // Class functions which return pitches of linked natural pitch E.
    //
    class func EFlatFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Ebb", englishDescription: "E Flat Flat", id: 2, pitchType: SKPitchType.Accidental, linkedNaturalPitch: E())
    }
    class func EFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Eb", englishDescription: "E Flat", id: 3, pitchType: SKPitchType.Accidental, linkedNaturalPitch: E())
    }
    class func ESharp() -> SKPitch {
        return SKPitch(musicalDescription: "E#", englishDescription: "E Sharp", id: 5, pitchType: SKPitchType.Accidental, linkedNaturalPitch: E())
    }
    class func ESharpSharp() -> SKPitch {
        return SKPitch(musicalDescription: "E##", englishDescription: "E Sharp Sharp", id: 6, pitchType: SKPitchType.Accidental, linkedNaturalPitch: E())
    }
    
    //
    // F Pitches.
    // Class functions which return pitches of linked natural pitch F.
    //
    class func FFlatFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Fbb", englishDescription: "F Flat Flat", id: 3, pitchType: SKPitchType.Accidental, linkedNaturalPitch: F())
    }
    class func FFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Fb", englishDescription: "F Flat", id: 4, pitchType: SKPitchType.Accidental, linkedNaturalPitch: F())
    }
    class func FSharp() -> SKPitch {
        return SKPitch(musicalDescription: "F#", englishDescription: "F Sharp", id: 6, pitchType: SKPitchType.Accidental, linkedNaturalPitch: F())
    }
    class func FSharpSharp() -> SKPitch {
        return SKPitch(musicalDescription: "F##", englishDescription: "F Sharp Sharp", id: 7, pitchType: SKPitchType.Accidental, linkedNaturalPitch: F())
    }
    
    //
    // G Pitches.
    // Class functions which return pitches of linked natural pitch G.
    //
    class func GFlatFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Gbb", englishDescription: "G Flat Flat", id: 5, pitchType: SKPitchType.Accidental, linkedNaturalPitch: G())
    }
    class func GFlat() -> SKPitch {
        return SKPitch(musicalDescription: "Gb", englishDescription: "G Flat", id: 6, pitchType: SKPitchType.Accidental, linkedNaturalPitch: G())
    }
    class func GSharp() -> SKPitch {
        return SKPitch(musicalDescription: "G#", englishDescription: "G Sharp", id: 8, pitchType: SKPitchType.Accidental, linkedNaturalPitch: G())
    }
    class func GSharpSharp() -> SKPitch {
        return SKPitch(musicalDescription: "G##", englishDescription: "G Sharp Sharp", id: 9, pitchType: SKPitchType.Accidental, linkedNaturalPitch: G())
    }
    
}



