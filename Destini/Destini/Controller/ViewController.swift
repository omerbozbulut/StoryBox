//
//  ViewController.swift
//  Destini
//
//  Created by omer faruk bozbulut on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var StoryLabel: UILabel!
    
    @IBOutlet weak var Choise1: UIButton!
    @IBOutlet weak var Choise2: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StoryLabel.text = storyBrain.getStoryTitle()
        Choise1.setTitle(storyBrain.getButton1Title(), for: .normal)
        Choise2.setTitle(storyBrain.getButton2Title(), for: .normal)
    }
    
    
    @IBAction func pressedChoise(_ sender: UIButton) {
        storyBrain.nextStory(sender)
    }
    
    @IBAction func updateUI(_ sender: UIButton) {
        StoryLabel.text = storyBrain.Stories[storyBrain.storyNumber].story
        Choise1.setTitle(storyBrain.getButton1Title(), for: .normal)
        Choise2.setTitle(storyBrain.getButton2Title(), for: .normal)
        
    }
    
    

}

