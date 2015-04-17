//
//  ViewController.swift
//  ScaleKit
//
//  Created by Joshua Herkness on 4/17/15.
//  Copyright (c) 2015 Joshua Herkness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var pitch: Pitch = Pitch.ASharp()
        var note: Note = Note(pitch: pitch, octave: Octave.Ten)
        
        println(note.midiValue)
        println(note.frequency)
        println(note.pitch.englishDescription)
        println(note.musicalDescription)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

