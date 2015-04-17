//
//  ScaleType.swift
//
//  Created by Joshua Herkness on 11/14/14.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import UIKit

/**
Category which defines related scaleTypes

- Standard
- Blues
- Jazz
- European
- Asiatic
- Modal
*/
enum ScaleCategory : String{
    
    case Standard = "Standard"
    case Blues = "Blues"
    case Jazz = "Jazz"
    case European = "European"
    case Asiatic = "Asiatic"
    case Modal = "Modal"
    
}

/**
*  Structure for a scale
*/
class ScaleType: NSObject {
    
    /// String value of english description for a scale type
    var englishDescription: String = String()
    
    /// String value of the musical description for a scale type
    var musicalDescription: String = String()
    
    /// Category which defines related scales
    var scaleCategory: ScaleCategory
    
    /// Ascending position of notes
    var patternArrayAscending: [String]
    
    /// Decending position of notes
    var patternArrayDescending: [String]!
    
    /// Ascending binary like pattern for notes
    var templateArrayAscending: [Int]
    
    /// Decending binary like pattern for notes
    var templateArrayDescending: [Int]!

    
    /**
    A frame coresponding to a specific scale type.  i.e. Major, Minor, Harmonic Minor.
    
    :param: englishDescription      String, coresponding to an english description of the scale type.
    :param: musicalDescription      String, coresponding to a musical description of the scale type.
    :param: scaleCategory           ScaleCategory, which coresponds to the category the scale type falls in.  i.e. Standard, Blues.
    :param: patternArrayAscending   Ascending position of notes
    :param: patternArrayDescending  Decending position of notes.
    :param: templateArrayAscending  Ascending binary like pattern for notes
    :param: templateArrayDescending Decending binary like pattern for notes
    */
    init(englishDescription: String, musicalDescription: String, scaleCategory: ScaleCategory, patternArrayAscending: [String], patternArrayDescending: [String]!, templateArrayAscending: [Int], templateArrayDescending: [Int]!) {
        
        self.englishDescription = englishDescription
        self.musicalDescription = musicalDescription
        self.scaleCategory = scaleCategory
        self.patternArrayAscending = patternArrayAscending
        self.patternArrayDescending = patternArrayDescending
        self.templateArrayAscending = templateArrayAscending
        self.templateArrayDescending = templateArrayDescending
        
        super.init()
    }
    
    /**
    Retrieves the english description for a scale type.
    
    :returns: englishDescription String
    */
    func getEnglishDescription() -> String {
        return englishDescription
    }
    
    /**
    Retrieves the scale category of a scale type
    
    :returns: scaleCategory ScaleCategory
    */
    func getScaleCategory() -> ScaleCategory {
        return scaleCategory
    }
    
    /**
    Retrieves the ascending pattern for a scale type
    
    :returns: patternArrayAscending [String]
    */
    func getPatternArrayAscending() -> [String] {
        return patternArrayAscending
    }
    
    /**
    Retrieves the descending pattern for a scale type
    
    :returns: patternArrayDescending [String]
    */
    func getPatternArrayDescending() -> [String] {
        return patternArrayDescending
    }
    
    /**
    Retrieves the ascending binary like pattern for a scale type
    
    :returns: templateArrayAscending [Int]
    */
    func getTemplateArrayAscending() -> [Int] {
        return templateArrayAscending
    }
    
    /**
    Retrieves the descending binary like pattern for a scale type
    
    :returns: templateArrayDescending [Int]
    */
    func getTemplateArrayDescending() -> [Int] {
        return templateArrayDescending
    }
    
    /**
    Retrieves an array of all scale types.
    
    - Desired scale type must be held in local scale type array.
    
    :returns: scaletypes [ScaleType]
    */
    class func getAllScaleTypes() -> [ScaleType] {
        
        var scaletypes: [ScaleType] = [ScaleType.Major(), ScaleType.NaturalMinor(), ScaleType.HarmonicMinor()]
        return scaletypes
        
    }

    /**
    Retrieves an array of scale types that are similar to another scale type.
    
    - Uses either type of pattern to find similarities.
    
    :param: a ScaleType
    
    :returns: similarScaleTypes [ScaleType]
    */
    class func getSimilarScaleTypesToScaleType(a: ScaleType) -> [ScaleType] {
        
        var similarScaleTypes: [ScaleType] = []
        
        for b: ScaleType in getAllScaleTypes(){
            if (a.patternArrayAscending == b.patternArrayAscending && a.patternArrayDescending == b.patternArrayDescending) ||
                (a.templateArrayAscending == b.templateArrayAscending && a.templateArrayDescending == b.templateArrayDescending) {
                
                similarScaleTypes += [b]
            }
        }
        
        return similarScaleTypes
    }
    
    /**
    Retrieves an array of scale types that are sorted by scale category. i.e. Standard, Blues.
    
    :returns: categorizedScaleTypes [ScaleType]
    */
    class func getCategorizedScaleTypes() -> [ScaleType]{
        
        var categorizedScaleTypes: [ScaleType] = getAllScaleTypes()

        categorizedScaleTypes.sort { (a, b) -> Bool in
            if a.scaleCategory.rawValue.isEmpty {
                return false
            } else if b.scaleCategory.rawValue.isEmpty {
                return true
            } else {
                return a.scaleCategory.rawValue.localizedCaseInsensitiveCompare(b.scaleCategory.rawValue) == .OrderedAscending
            }
        }
        
        return categorizedScaleTypes
        
    }
    
    /**
    Retrieves an array of scale types that are sorted by category and, within categories, sorted alphabetically.
    
    :returns: alphabetizedCategorizedScaleTypes [ScaleType]
    */
    class func getAlphabetizedCategorizedScaleTypes() -> [ScaleType]{
        
        var alphabetizedCategorizedScaleTypes: [ScaleType] = getCategorizedScaleTypes()
        
        alphabetizedCategorizedScaleTypes.sort { (a, b) -> Bool in
            if b.scaleCategory.rawValue == a.scaleCategory.rawValue{
                return false
            }else if a.englishDescription.isEmpty {
                return false
            } else if b.englishDescription.isEmpty {
                return true
            } else {
                return a.englishDescription.localizedCaseInsensitiveCompare(b.englishDescription) == .OrderedAscending
            }
        }
        
        return alphabetizedCategorizedScaleTypes
    }
    
    class func Major() -> ScaleType {
        return ScaleType(englishDescription: "Major",
            musicalDescription: "Major",
            scaleCategory: ScaleCategory.Standard,
            patternArrayAscending: ["1","2","3","4","5","6","7","8"],
            patternArrayDescending: nil,
            templateArrayAscending: [1,0,1,0,1,1,0,1,0,1,0,1],
            templateArrayDescending: nil)
    }
    
    class func NaturalMinor() -> ScaleType {
        return ScaleType(englishDescription: "Natural Minor",
            musicalDescription: "Natural Minor",
            scaleCategory: ScaleCategory.Standard,
            patternArrayAscending: ["1","2","3-","4","5","6-","7-","8"],
            patternArrayDescending: nil,
            templateArrayAscending: [1,0,1,1,0,1,0,1,1,0,1,0],
            templateArrayDescending: nil)
    }
    
    class func HarmonicMinor() -> ScaleType {
        return ScaleType(englishDescription: "Harmonic Minor",
            musicalDescription: "HarmonicMinor",
            scaleCategory: ScaleCategory.Standard,
            patternArrayAscending: ["1","2","3-","4","5","6-","7","8"],
            patternArrayDescending: nil,
            templateArrayAscending: [1,0,1,1,0,1,0,1,1,0,0,1],
            templateArrayDescending: nil)
    }
   
}
