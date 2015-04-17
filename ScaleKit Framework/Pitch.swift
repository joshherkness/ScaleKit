//
//  Pitch.swift
//
//  Created by Joshua Herkness on 11/12/14.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import UIKit

/**
Corresponds to the type of a given pitch.

- Natural: Contains no accidentals.
- Accidental: Contains one or more accidentals (Sharps or Flats).
*/
public enum PitchType {
    
    case Natural
    case Accidental
    
}


/**
Corresponds to the pitch of a Note.

:Author: Joshua Herkness
:Version: Version 1.0
:Since: Version 1.0
*/
public class Pitch: NSObject {
    
    /// Integer value that corresponding to the 0'th octave MIDI value.
    var id: Int = Int()
    
    /// String variable describing the pitch in english
    var englishDescription: String = String()
    
    /// String variable describing the pitch in common musical notation
    var musicalDescription: String = String()
    
    /// PitchType coresponding to the type of the pitch.  Could be Natural or Accidental.
    var pitchType: PitchType!
    
    /// Pitch object corresponding to the natural pitch assosiated with the pitch.
    /// Will be Null if the pitch is already a natural pitch.
    var linkedNaturalPitch: Pitch!
    
    /**
    Default constructor for a Pitch object.
    
    :param: musicalDescription The Musical Description/Name of pitch.
    :param: englishDescription The English Description/Name of pitch.
    :param: id The Corresponding Zero'th octave MIDI values.
    :param: pitchType PitchType coresponding to the type of the pitch.
    :param: linkedNaturalPitch itch object corresponding to the natural pitch assosiated with the pitch.
    
    -nil if the pitch is already natural
    
    :returns: A Pitch
    */
    init(musicalDescription: String, englishDescription: String, id: Int, pitchType: PitchType, linkedNaturalPitch: Pitch?) {
        
        self.musicalDescription = musicalDescription
        self.englishDescription = englishDescription
        self.id = id
        self.pitchType = pitchType
        self.linkedNaturalPitch = linkedNaturalPitch
        
        super.init()
    }
    
    /**
    Retrieves the musical description of a pitch.
    
    :returns: musicalDescription of type String
    */
    func getMusicalDescription() -> String {
        return musicalDescription
    }
    
    /**
    Retrieves the english description of a pitch.
    
    :returns: englishDescription of type String
    */
    func getEnglishDescription() -> String {
        return englishDescription
    }
    
    /**
    Retrieves the english descriptiopn of a pitch, 
    setting the default description of a pitch to return the english description.
    
    :returns: englishDescription String
    */
    func toString() -> String {
        return englishDescription
    }
    
    /**
    Retrieves the 0th octave MIDI value of a pitch.
    
    :returns: id of type Int
    */
    func getID() -> Int {
        return id
    }
    
    /**
    Retrieves the pitch type of a pitch.  Can be Natural or Accidental.
    
    :returns: musicalDescription String value
    */
    func getPitchType() -> PitchType{
        return pitchType;
    }
    
    /**
    Retrieves the linked natural pitch of a pitch.  
    i.e. the pitch of A Sharp has a linked natural pitch of A.
    */
    func getLinkedNaturalPitch() -> Pitch{
        if self.pitchType == PitchType.Natural{
            return self
        }
        return linkedNaturalPitch;
    }
    
    /**
    Compairs two pitches by id.
    
    :returns: Bool Value
    */
    func equalsPitch(pitch: Pitch) -> Bool{
        if (id == pitch.id){
            return true
        }
        return false
    }
    
    
    //
    // Natural Pitches.
    // Class functions which return natural type pitches.
    //
    class func A() -> Pitch {
        return Pitch(musicalDescription: "A", englishDescription: "A", id: 9, pitchType: PitchType.Natural, linkedNaturalPitch: nil)
    }
    class func B() -> Pitch {
        return Pitch(musicalDescription: "B", englishDescription: "B", id: 11, pitchType: PitchType.Natural, linkedNaturalPitch: nil)
    }
    class func C() -> Pitch {
        return Pitch(musicalDescription: "C", englishDescription: "C", id: 0, pitchType: PitchType.Natural, linkedNaturalPitch: nil)
    }
    class func D() -> Pitch {
        return Pitch(musicalDescription: "D", englishDescription: "D", id: 2, pitchType: PitchType.Natural, linkedNaturalPitch: nil)
    }
    class func E() -> Pitch {
        return Pitch(musicalDescription: "E", englishDescription: "E", id: 4, pitchType: PitchType.Natural, linkedNaturalPitch: nil)
    }
    class func F() -> Pitch {
        return Pitch(musicalDescription: "F", englishDescription: "F", id: 5, pitchType: PitchType.Natural, linkedNaturalPitch: nil)
    }
    class func G() -> Pitch {
        return Pitch(musicalDescription: "G", englishDescription: "G", id: 7, pitchType: PitchType.Natural, linkedNaturalPitch: nil)
    }
    
    //
    // A Pitches.
    // Class functions which return pitches of linked natural pitch A.
    //
    class func AFlatFlat() -> Pitch {
        return Pitch(musicalDescription: "Abb", englishDescription: "A Flat Flat", id: 7, pitchType: PitchType.Accidental, linkedNaturalPitch: A())
    }
    class func AFlat() -> Pitch {
        return Pitch(musicalDescription: "Ab", englishDescription: "A Flat", id: 8, pitchType: PitchType.Accidental, linkedNaturalPitch: A())
    }
    class func ASharp() -> Pitch {
        return Pitch(musicalDescription: "A#", englishDescription: "A Sharp", id: 10, pitchType: PitchType.Accidental, linkedNaturalPitch: A())
    }
    class func ASharpSharp() -> Pitch {
        return Pitch(musicalDescription: "A##", englishDescription: "A Sharp Sharp", id: 11, pitchType: PitchType.Accidental, linkedNaturalPitch: A())
    }
    
    //
    // B Pitches.
    // Class functions which return pitches of linked natural pitch B.
    //
    class func BFlatFlat() -> Pitch {
        return Pitch(musicalDescription: "Bbb", englishDescription: "B Flat Flat", id: 9, pitchType: PitchType.Accidental, linkedNaturalPitch: B())
    }
    class func BFlat() -> Pitch {
        return Pitch(musicalDescription: "Bb", englishDescription: "B Flat", id: 10, pitchType: PitchType.Accidental, linkedNaturalPitch: B())
    }
    class func BSharp() -> Pitch {
        return Pitch(musicalDescription: "B#", englishDescription: "B Sharp", id: 0, pitchType: PitchType.Accidental, linkedNaturalPitch: B())
    }
    class func BSharpSharp() -> Pitch {
        return Pitch(musicalDescription: "B##", englishDescription: "B Sharp Sharp", id: 1, pitchType: PitchType.Accidental, linkedNaturalPitch: B())
    }
    
    //
    // C Pitches.
    // Class functions which return pitches of linked natural pitch C.
    //
    class func CFlatFlat() -> Pitch {
        return Pitch(musicalDescription: "Cbb", englishDescription: "C Flat Flat", id: 10, pitchType: PitchType.Accidental, linkedNaturalPitch: C())
    }
    class func CFlat() -> Pitch {
        return Pitch(musicalDescription: "Cb", englishDescription: "C Flat", id: 11, pitchType: PitchType.Accidental, linkedNaturalPitch: C())
    }
    class func CSharp() -> Pitch {
        return Pitch(musicalDescription: "C#", englishDescription: "C Sharp", id: 1, pitchType: PitchType.Accidental, linkedNaturalPitch: C())
    }
    class func CSharpSharp() -> Pitch {
        return Pitch(musicalDescription: "C##", englishDescription: "C Sharp Sharp", id: 2, pitchType: PitchType.Accidental, linkedNaturalPitch: C())
    }
    
    //
    // D Pitches.
    // Class functions which return pitches of linked natural pitch D.
    //
    class func DFlatFlat() -> Pitch {
        return Pitch(musicalDescription: "Dbb", englishDescription: "D Flat Flat", id: 0, pitchType: PitchType.Accidental, linkedNaturalPitch: D())
    }
    class func DFlat() -> Pitch {
        return Pitch(musicalDescription: "Db", englishDescription: "D Flat", id: 1, pitchType: PitchType.Accidental, linkedNaturalPitch: D())
    }
    class func DSharp() -> Pitch {
        return Pitch(musicalDescription: "D#", englishDescription: "D Sharp", id: 3, pitchType: PitchType.Accidental, linkedNaturalPitch: D())
    }
    class func DSharpSharp() -> Pitch {
        return Pitch(musicalDescription: "D##", englishDescription: "D Sharp Sharp", id: 4, pitchType: PitchType.Accidental, linkedNaturalPitch: D())
    }
    
    //
    // E Pitches.
    // Class functions which return pitches of linked natural pitch E.
    //
    class func EFlatFlat() -> Pitch {
        return Pitch(musicalDescription: "Ebb", englishDescription: "E Flat Flat", id: 2, pitchType: PitchType.Accidental, linkedNaturalPitch: E())
    }
    class func EFlat() -> Pitch {
        return Pitch(musicalDescription: "Eb", englishDescription: "E Flat", id: 3, pitchType: PitchType.Accidental, linkedNaturalPitch: E())
    }
    class func ESharp() -> Pitch {
        return Pitch(musicalDescription: "E#", englishDescription: "E Sharp", id: 5, pitchType: PitchType.Accidental, linkedNaturalPitch: E())
    }
    class func ESharpSharp() -> Pitch {
        return Pitch(musicalDescription: "E##", englishDescription: "E Sharp Sharp", id: 6, pitchType: PitchType.Accidental, linkedNaturalPitch: E())
    }
    
    //
    // F Pitches.
    // Class functions which return pitches of linked natural pitch F.
    //
    class func FFlatFlat() -> Pitch {
        return Pitch(musicalDescription: "Fbb", englishDescription: "F Flat Flat", id: 3, pitchType: PitchType.Accidental, linkedNaturalPitch: F())
    }
    class func FFlat() -> Pitch {
        return Pitch(musicalDescription: "Fb", englishDescription: "F Flat", id: 4, pitchType: PitchType.Accidental, linkedNaturalPitch: F())
    }
    class func FSharp() -> Pitch {
        return Pitch(musicalDescription: "F#", englishDescription: "F Sharp", id: 6, pitchType: PitchType.Accidental, linkedNaturalPitch: F())
    }
    class func FSharpSharp() -> Pitch {
        return Pitch(musicalDescription: "F##", englishDescription: "F Sharp Sharp", id: 7, pitchType: PitchType.Accidental, linkedNaturalPitch: F())
    }
    
    //
    // G Pitches.
    // Class functions which return pitches of linked natural pitch G.
    //
    class func GFlatFlat() -> Pitch {
        return Pitch(musicalDescription: "Gbb", englishDescription: "G Flat Flat", id: 5, pitchType: PitchType.Accidental, linkedNaturalPitch: G())
    }
    class func GFlat() -> Pitch {
        return Pitch(musicalDescription: "Gb", englishDescription: "G Flat", id: 6, pitchType: PitchType.Accidental, linkedNaturalPitch: G())
    }
    class func GSharp() -> Pitch {
        return Pitch(musicalDescription: "G#", englishDescription: "G Sharp", id: 8, pitchType: PitchType.Accidental, linkedNaturalPitch: G())
    }
    class func GSharpSharp() -> Pitch {
        return Pitch(musicalDescription: "G##", englishDescription: "G Sharp Sharp", id: 9, pitchType: PitchType.Accidental, linkedNaturalPitch: G())
    }
    
    
    /**
    Retreives an array of all Pitch Objects.
    
    - Desired pitches must be added to local instance variable arrayOfPitches.
    
    :returns: arrayOfPitches Array of all Pitch objects.
    */
    class func getAllPitches() -> [Pitch]{
        
        var arrayOfPitches: [Pitch] = [Pitch.A(),Pitch.B(),Pitch.C(),Pitch.D(),Pitch.E(),
            Pitch.F(),Pitch.G(),Pitch.AFlatFlat(),Pitch.AFlat(),Pitch.ASharp(),Pitch.ASharpSharp(),
            Pitch.BFlatFlat(),Pitch.BFlat(),Pitch.BSharp(),Pitch.BSharpSharp(),Pitch.CFlatFlat(),
            Pitch.CFlat(),Pitch.CSharp(),Pitch.CSharpSharp(),Pitch.DFlatFlat(),Pitch.DFlat(),
            Pitch.DSharp(),Pitch.DSharpSharp(),Pitch.EFlatFlat(),Pitch.EFlat(),Pitch.ESharp(),
            Pitch.ESharpSharp(),Pitch.FFlatFlat(),Pitch.FFlat(),Pitch.FSharp(),Pitch.FSharpSharp(),
            Pitch.GFlatFlat(),Pitch.GFlat(),Pitch.GSharp(),Pitch.GSharpSharp()]
        
        return arrayOfPitches
    }
    
    /**
    Retreives an array of similar pitches given an id (coresponding to the 0th octave MIDI value).
    
    :param: id Integer value of base id.
    
    :returns: pitchArrayWithId Array of Pitch objects with the same id.
    */
    class func getArrayOfPitchesWithId(id: Int) -> [Pitch]{
        
        var pitchesWithId: [Pitch] = []
        
        //Get array of all pitches
        var allPitches: [Pitch] = getAllPitches()
        
        //Add pitches with same id
        for pitch: Pitch in allPitches{
            if pitch.getID() == id {
                pitchesWithId += [pitch]
            }
        }
        
        return pitchesWithId
    }
    
    /**
    Retrieves a pitch given an english or musical description.
    
    :param: description The english or musical description string value
    
    :returns: Pitch?
    */
    class func getPitchWithDescription(description: String) -> Pitch?{
        
        //All Pitch objects
        var allPitches: [Pitch] = getAllPitches()
  
        //Look for a Pitch with similar english or musical description
        for p: Pitch in allPitches{
            if p.musicalDescription.lowercaseString == description.lowercaseString ||
                p.englishDescription.lowercaseString == description.lowercaseString{
                
                return p
            }
        }
        
        return nil
        
    }
}



