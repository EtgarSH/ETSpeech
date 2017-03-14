//
//  SpeechSerie.swift
//  siri

import Foundation
import AVFoundation

class SpeechSerie {
    let speech: Speech!
    
    var strings: [String]!
    private var index = 0
    
    init(strings: [String], voice: AVSpeechSynthesisVoice) {
        self.strings = strings
        self.index = 0
        
        self.speech = Speech(voice: voice)
    }
    
    func playNext() {
        self.speech.say(string: self.strings[self.index])
        self.index += 1
        
        if self.index == self.strings.count {
            self.index = 0
        }
    }
    
    func addString(string: String) {
        self.strings.append(string)
    }
    
    func setStrings(strings: [String]) {
        self.strings = strings
        self.index = 0
    }
}
