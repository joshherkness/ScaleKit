//
//  PitchTest.swift
//  ScaleKit
//
//  Created by Joshua Herkness on 4/17/15.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import UIKit
import XCTest

class PitchTest: XCTestCase {
    
    var testPitch: SKPitch!
    
    let englishDescription = "English Description"
    let musicalDescription = "Musical Description"
    let id = 5
    let pitchType: SKPitchType = SKPitchType.Accidental
    let linkedNaturalPitch: SKPitch = SKPitch.D()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        self.testPitch = SKPitch(musicalDescription: self.musicalDescription, englishDescription: self.englishDescription, id: self.id, pitchType: self.pitchType, linkedNaturalPitch: self.linkedNaturalPitch)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    /**
    Tests if the pitch class can cunstruct a Pitch object.
    */
    func testCreatePitch() {
        XCTAssertNotNil(testPitch, "Pitch Created");
    }
    
    /**
    Tests if two pitches are equal.
    */
    func testCompairPitch() {
        
    }
    
    /**
    Tests if the Pitch class returns the correct to string description.
    */
    func testToString(){
        
    }
    
    /**
    Tests if the Pitch class can gather an array of Pitch objects.
    */
    func testGetArrayOfPitches(){
        
    }
    
    /**
    Tests if the Pitch objects have the same id.
    */
    func testGetArrayOfPitchesWithId(){
        
    }
    
    /**
    Tests if we can retrieve a Pitch object with a description.
    */
    func testGetPitchWithDescription(){
        
    }
}
