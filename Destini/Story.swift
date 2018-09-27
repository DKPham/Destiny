//
//  Story.swift
//  Destini
//
//  Created by Duy Pham on 9/16/17.
//

import Foundation

class Story {
    let storyText: String
    let answerA: String
    let answerB: String
    
    init(storyText: String, answerA: String = "", answerB: String = "") {
        self.storyText = storyText
        self.answerA = answerA
        self.answerB = answerB
    }
}
