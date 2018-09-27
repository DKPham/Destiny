//
//  ViewController.swift
//  Destini
//
//  Created by Duy Pham on 9/16/17


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    let allStories = StoryBank()
    var storyIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(listIndex: 0)
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        tellStory(buttonTag: sender.tag)
    }

    @IBAction func restartButtonPressed(_ sender: UIButton) {
        if storyIndex == 4 || storyIndex == 5 || storyIndex == 6 {
            storyIndex = 0
            updateUI(listIndex: 0)
            topButton.isHidden = false
            bottomButton.isHidden = false
            restartButton.isHidden = true
        }
    }
    
    func updateUI(listIndex: Int) {
        if listIndex == 0 || listIndex == 1 || listIndex == 2 {
            storyTextView.text = allStories.list[listIndex].storyText
            topButton.setTitle("\(allStories.list[listIndex].answerA)", for: .normal)
            bottomButton.setTitle("\(allStories.list[listIndex].answerB)", for: .normal)
        }
        if listIndex == 3 || listIndex == 4 || listIndex == 5 {
            storyTextView.text = allStories.list[listIndex].storyText
            topButton.isHidden = true
            bottomButton.isHidden = true
            restartButton.isHidden = false
        }
    }
    
    func tellStory(buttonTag: Int) {
        if buttonTag == 1 && (storyIndex == 0 || storyIndex == 2) {
            updateUI(listIndex: 2)
            storyIndex = 3
        } else if buttonTag == 2 && storyIndex == 0 {
            updateUI(listIndex: 1)
            storyIndex = 2
        } else if buttonTag == 1 && storyIndex == 3 {
            updateUI(listIndex: 5)
            storyIndex = 6
        } else if buttonTag == 2 && storyIndex == 3 {
            updateUI(listIndex: 4)
            storyIndex = 5
        } else if buttonTag == 2 && storyIndex == 2 {
            updateUI(listIndex: 3)
            storyIndex = 4
        }
    }
}

