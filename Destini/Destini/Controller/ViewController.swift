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
    
    var storyNumber : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        StoryLabel.text = storyBrain.Stories[storyNumber].story
        Choise1.setTitle(storyBrain.Stories[storyNumber].answer1, for: .normal)
        Choise2.setTitle(storyBrain.Stories[storyNumber].answer2, for: .normal)
    }
    
    
    
    @IBAction func updateUI(_ sender: UIButton) {
        StoryLabel.text = storyBrain.Stories[storyNumber].story
        Choise1.setTitle(storyBrain.Stories[storyNumber].answer1, for: .normal)
        Choise2.setTitle(storyBrain.Stories[storyNumber].answer2, for: .normal)
        
    }
    
    

}

