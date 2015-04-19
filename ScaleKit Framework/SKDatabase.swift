//
//  SKDatabase.swift
//  ScaleKit
//
//  Created by Joshua Herkness on 4/19/15.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import Foundation


public class SKDatabase : NSObject {
    
    // -----------------------------------------------------------------------------
    // MARK: SKPitch
    // -----------------------------------------------------------------------------
    
    /** Retreives an array of SKPitch objects.
    
    :returns: arrayOfPitches Array of SKPitch objects.
    */
    public func getAllSKPitchObjects() -> [SKPitch]{
        
        // New pitch objects must be added here.
        var arrayOfPitches: [SKPitch] = [SKPitch.A(),SKPitch.B(),SKPitch.C(),SKPitch.D(),SKPitch.E(),
            SKPitch.F(),SKPitch.G(),SKPitch.AFlatFlat(),SKPitch.AFlat(),SKPitch.ASharp(),SKPitch.ASharpSharp(),
            SKPitch.BFlatFlat(),SKPitch.BFlat(),SKPitch.BSharp(),SKPitch.BSharpSharp(),SKPitch.CFlatFlat(),
            SKPitch.CFlat(),SKPitch.CSharp(),SKPitch.CSharpSharp(),SKPitch.DFlatFlat(),SKPitch.DFlat(),
            SKPitch.DSharp(),SKPitch.DSharpSharp(),SKPitch.EFlatFlat(),SKPitch.EFlat(),SKPitch.ESharp(),
            SKPitch.ESharpSharp(),SKPitch.FFlatFlat(),SKPitch.FFlat(),SKPitch.FSharp(),SKPitch.FSharpSharp(),
            SKPitch.GFlatFlat(),SKPitch.GFlat(),SKPitch.GSharp(),SKPitch.GSharpSharp()]
        
        return arrayOfPitches
    }
    
    /** Retreives a list of SKPitch objects with the same id.
    
    :param: id Integer value corresponding to the id of the pitch.
    :returns: [SKPitch] Array of SKPitch objects.
    */
    public func getArrayOfPitchesWithId(id: Int) -> [SKPitch]{
        
        var pitchesWithId: [SKPitch] = []
        
        // Gather all SKPitch objects with the same id.
        for pitch: SKPitch in getAllSKPitchObjects() {
            if pitch.id == id {
                pitchesWithId += [pitch]
            }
        }
        
        return pitchesWithId
    }
    
    /** Retrieves an SKPitch object, provided either a musical or english description.
    
    :param: description The english or musical description of the SKPitch.
    :returns: Pitch?
    */
    public func getPitchWithDescription(description: String) -> SKPitch?{
        
        // Search for an SKPitch object with the same english or musical description
        for pitch: SKPitch in getAllSKPitchObjects() {
            if pitch.musicalDescription.lowercaseString == description.lowercaseString ||
                pitch.englishDescription.lowercaseString == description.lowercaseString{
                    
                    return pitch
            }
        }
        return nil
    }
    
    
    
}