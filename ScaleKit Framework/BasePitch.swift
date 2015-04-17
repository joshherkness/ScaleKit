//
//  BasePitch.swift
//  ScaleManager
//
//  Created by Joshua Herkness on 2/4/15.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import Foundation

/**
*  <#Description#>
*/
class BasePitch: NSObject {
    

    /// Integer value that coresponds to the base pitches id.
    var id: Int = Int()
    
    /// String value which describes the base pitch in english.
    var englishDescription: String = String()
    
    /// String value which describes the base pitch in common musical notation.
    var musicalDescription: String = String()
    
    /// PitchType which describes the base pitches type.  Can either be Natural or Accidental.
    var pitchType: PitchType!
    
    
    /// BasePitch which describes the natural counterpart.
    var linkedNaturalPitch: BasePitch!
    
    /**
    Initializes a new base pitch.
    
    :param: musicalDescription The musical description of the base pitch
    :param: englishDescription The english description of the base pitch
    :param: id The value coresponding to the base pitches id
    :param: pitchType Describing the type of the base pitch
    :param: linkedNaturalPitch Describes the natural counterpart
    
    - The linkedNaturalPitch will be nill if it is already natural.
    
    :returns: BasePitch
    */
    init(musicalDescription: String, englishDescription: String, id: Int, pitchType: PitchType, linkedNaturalPitch: BasePitch?) {
        
        self.musicalDescription = musicalDescription
        self.englishDescription = englishDescription
        self.id = id
        self.pitchType = pitchType
        self.linkedNaturalPitch = linkedNaturalPitch
        
        super.init()
    }
    
    /**
    Retrieves the musical description of a base pitch.
    
    :returns: musicalDescription of type String
    */
    func getMusicalDescription() -> String {
        return musicalDescription
    }
    
    /**
    retrieves the english description of a base pitch.
    
    :returns: englishDescription of type String
    */
    func getEnglishDescription() -> String {
        return englishDescription
    }
    
    /**
    Retrieves the english descriptiopn of a base pitch,
    setting the default description of a base pitch to return the english description.
    
    :returns: englishDescription String
    */
    func toString() -> String {
        return englishDescription
    }
    
    /**
    Retrieves the id of a base pitch.
    
    :returns: id of type Int
    */
    func getID() -> Int {
        return id
    }
    
    /**
    Retrieves the pitch type of a base pitch.  Can be Natural or Accidental.
    
    :returns: pitchType
    */
    func getPitchType() -> PitchType{
        return pitchType;
    }
    
    /**
    Retrieves the linked natural pitch of a base pitch.
    i.e. the pitch of A Sharp has a linked natural pitch of A.
    */
    func getLinkedNaturalPitch() -> BasePitch{
        if self.pitchType == PitchType.Natural{
            return self
        }
        return linkedNaturalPitch;
    }

    /**
    Compairs two base pitches by id.
    
    :returns: Bool Value
    */
    func equalsPitch(pitch: Pitch) -> Bool{
        if (id == pitch.id){
            return true
        }
        return false
    }
    
    
    /**
    Description: Natural Pitches
    */
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
    
    /**
    Description: Create class types functions of the A accidental pitches
    */
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
    
    /**
    Description: Create class types functions of the B accidental pitches
    */
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
    
    /**
    Description: Create class types functions of the C accidental pitches
    */
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
    
    /**
    Description: Create class types functions of the D accidental pitches
    */
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
    
    /**
    Description: Create class types functions of the E accidental pitches
    */
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
    
    /**
    Description: Create class types functions of the F accidental pitches
    */
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
    
    /**
    Description: Create class types functions of the G accidental pitches
    */
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
    Retreives an array of all Pitch Objects
    
    - Desired pitches must be added to local instance variable arrayOfPitches
    
    :returns: Array of Pitch Objects
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
    
    :param: id of type Int
    
    :returns: pitchArrayWithId of type Pitch[]
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
        
        //All Pitches
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
