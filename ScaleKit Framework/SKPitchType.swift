//
//  SKPitchType.swift
//  ScaleKit
//
//  Created by Joshua Herkness on 4/19/15.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import Foundation

/** 
SKPitchType.  Represents the type of the musical pitch.

- Natural: Contains no accidentals.
- Accidental: Contains one or more accidentals (Sharps or Flats).

*/
public enum SKPitchType {
    
    case Natural
    case Accidental
    
}