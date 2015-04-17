# Scale-API

## Musical Scale API

Currently in the process of working on a musical API in swift.  Created with the intent of containing a database of scales, with the ability to play those scales.

## TODO

1. Determain what kind of sound system well need
  - AVFoundation?
  - CoreMidi?
  [AVMIDIPlayer](https://developer.apple.com/library/prerelease/ios/documentation/AVFoundation/Reference/AVMIDIPlayer_Class/index.html)
  
  I want to be able to play a semi-fluid sine wave with a frequency, but toggle notes using MIDI.
  
2. Create class Hierarchy

  - MusicAPI
    - MusicMachine
      - Scale
      - Key
        - ScaleType
          - ScaleCategory
        - Note
          - Octave
          - Pitch
            - PitchType

3. Need to figure out how to simplify readability

4. Figure out how to link in with player object (i.e Piano or instrumentalClass interface)

5. Figure out how to implement chords in the future (After Scales)

## Tasks: 

Tasks | Completed
--- | ---
Simplify readability | No
Convert each note in the pattern | No
More languages | No
Calculate scale using key, rather than tonic? | No
Calculate frequency of note | Yes
Calculate MIDI value of note | Yes
Combine Pitch and Note | No
Create pitch from frequency | No

