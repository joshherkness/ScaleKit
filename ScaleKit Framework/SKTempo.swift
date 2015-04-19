//
//  SKTempo.swift
//  ScaleKit
//
//  Created by Joshua Herkness on 4/18/15.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import Foundation

public class SKTempo: NSObject {
    
    // -----------------------------------------------------------------------------
    // MARK: Instance Variables
    // -----------------------------------------------------------------------------
    
    var value: Int
    var name: String
    var englishDescription: String
    var min: Int
    var max: Int
    
    // -----------------------------------------------------------------------------
    // MARK: Initialization
    // -----------------------------------------------------------------------------
    
    /** Default constructor for a SKTempo object.  Uses moderato for default.
    
    :returns: SKTempo
    */
    override init() {
        self.value = SKTempo.Moderato().value
        self.name = SKTempo.Moderato().name
        self.englishDescription = SKTempo.Moderato().englishDescription
        self.min = SKTempo.Moderato().min
        self.max = SKTempo.Moderato().max
        super.init()
    }
    
    /**
    Overloaded constructor for a SKTempo Object.  Accepts an integer tempo marking (BPM).
    
    :param: value Integer tempo marking (BPM).
    
    :returns: SKTempo
    */
    init(value: Int) {
        self.value = value
        self.name = SKTempo.findSKTempoWithValue(value).name
        self.englishDescription = SKTempo.findSKTempoWithValue(value).englishDescription
        self.min = SKTempo.findSKTempoWithValue(value).min
        self.max = SKTempo.findSKTempoWithValue(value).max
        super.init()
    }
    
    /**
    Overloaded constructor for a SKTempo Object.  Used for static tempo markings.
    
    :param: value              Integer value of tempo marking (BPM).
    :param: name               String name of tempo marking
    :param: englishDescription Stirng english description of the tempo marking
    :param: min                Integer minimum value of the tempo marking
    :param: max                Integer maximum value of the tempo marking
    
    :returns: SKTempo
    */
    init(value: Int, name: String, englishDescription: String, min: Int, max: Int) {
        self.value = value
        self.name = name
        self.englishDescription = englishDescription
        self.min = min
        self.max = max
        
        super.init()
    }
    
    // -----------------------------------------------------------------------------
    // MARK: Functions
    // -----------------------------------------------------------------------------
    
    public func toString() -> String{
        return "\(name) means \(englishDescription) tempo, and can range from \(min) to \(max) BPM"
    }
    
    // -----------------------------------------------------------------------------
    // MARK: Class Functions
    // -----------------------------------------------------------------------------
    
    class func Larghissimo() -> SKTempo {
        return SKTempo(value: 20, name: "Larghissimo", englishDescription: "very, very slow", min: 1, max: 40)
    }
    
    class func Largo() -> SKTempo {
        return SKTempo(value: 50, name: "Largo", englishDescription: "broadly", min: 40, max: 60)
    }
    
    class func Larghetto() -> SKTempo {
        return SKTempo(value: 63, name: "Larghetto", englishDescription: "rather broadly", min: 60, max: 66)
    }
    
    class func Adagio() -> SKTempo {
        return SKTempo(value: 70, name: "Adagio", englishDescription: "slow and steady", min: 66, max: 76)
    }
    
    class func Andante() -> SKTempo {
        return SKTempo(value: 90, name: "Andante", englishDescription: "at a walking pace", min: 76, max: 108)
    }
    
    class func Moderato() -> SKTempo {
        return SKTempo(value: 115, name: "Moderato", englishDescription: "moderately", min: 108, max: 120)
    }
    
    class func Allegro() -> SKTempo {
        return SKTempo(value: 145, name: "Allegro", englishDescription: "fast, quick, and bright", min: 120, max: 168)
    }
    
    class func Presto() -> SKTempo {
        return SKTempo(value: 185, name: "Presto", englishDescription: "extremely fast", min: 168, max: 200)
    }
    
    class func Prestissimo() -> SKTempo {
        return SKTempo(value: 200, name: "Prestissimo", englishDescription: "even faster than Presto", min: 200, max: 400)
    }
    
    class func getAllSKTempos() -> [SKTempo]{
        return [SKTempo.Larghissimo(), SKTempo.Largo(), SKTempo.Larghetto(), SKTempo.Adagio(),
            SKTempo.Andante(), SKTempo.Moderato(), SKTempo.Allegro(), SKTempo.Presto(), SKTempo.Prestissimo()]
    }

    class func findSKTempoWithValue(value: Int) -> SKTempo! {
        for tempo: SKTempo in SKTempo.getAllSKTempos() {
            if value < tempo.max || value >= tempo.min {
                return tempo
            }
        }
        return nil
    }
}







