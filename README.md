# ScaleKit

## Musical Scale API

Currently in the process of working on a ScaleKit in swift.  Created with the intent of containing a database of scales, with the ability to play those scales.

## Requirements

1. Create a scale, given a **tonic** and **scale type**.
2. Traverse the notes of a scale in **ascending**, **decending**, and **both**.
3. Play a given step of a scale.
4. Favorite a scale.
5. Name/save a custom scale.
6. Transcribe a given scale.
7. Search for a scale, given a **description**, **steps**, or **type**.

## Database
### Tests
#### Pitch
- Creating a pitch
- Compairing pitches
- Searching for a pitch
- Getting all pitches
- Getting pitches with id
- Getting pitches with description

#### Note
- Creating a note
- Testing the MIDI value
- Testing the frequency
- Testing the english description
- Testing the musical description

#### ScaleType
- Getting all scale types
- Getting simmilar scale types

#### Scale
- Test calculated notes

## Middleware
### Tests
Undecided

## Implimentation
- Figure out how to use **AudioKit** with ScaleKit
- Other possible resources include AVFoundation, CoreMidi, and AVMIDIPlayer

## Favoriting Strategy
Unknown

## Scale Saving Strategy
CoreData - Promising
<br><del>Text</del>
<br><del>JSON</del>
<br><del>UserDefaults</del>

Would have to allow all database classes to be saved in CoreData.

Some things that **need** to be saved include:

- Custom Name
- Binary Pattern
- Step Shifts
- Tonic???

## Class Hierarchy
  - ScaleKit
    - Database
      - Scale
        - ScaleType
          - ScaleCategory
        - Note
          - Octave
          - Pitch
            - PitchType
	- Middleware
	  - Logic, possibly interactions with AudioKit

## Tasks: 

Tasks | Completed
--- | ---
Database Class | No
Pitch Class | Close
Pitch Test | No
Note Class | Close
Note Test | No
ScaleType Class | Close
ScaleType Test | No
Scale Class | No
Scale Test | No
Middleware Class | No
AudioKit | No
Cleaning | No

