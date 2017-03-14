//
//  Speech.swift
//  siri
//

import Foundation
import AVFoundation

class Speech {
    var synth: AVSpeechSynthesizer!
    var voice: AVSpeechSynthesisVoice!
    
    init(voice: AVSpeechSynthesisVoice) {
        self.synth = AVSpeechSynthesizer()
        self.voice = voice
    }
    
    func say(string: String) {
        let speech = AVSpeechUtterance(string: string)
        speech.voice = voice
        
        self.synth.speak(speech)
    }
}
