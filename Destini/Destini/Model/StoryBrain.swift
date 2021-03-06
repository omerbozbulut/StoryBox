//
//  StoryBrain.swift
//  Destini
//
//  Created by omer faruk bozbulut on 19.02.2022.
//

import Foundation
import UIKit

struct StoryBrain{
    
    var storyNumber : Int = 0
    
    let Stories = [Story(
        story: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
        answer1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
        answer2: "Better ask him if he's a murderer first.", choice2Destination: 1
    ),
                   Story(
                    story: "He nods slowly, unfazed by the question.",
                    answer1: "At least he's honest. I'll climb in.", choice1Destination: 2,
                    answer2: "Wait, I know how to change a tire.", choice2Destination: 3
                   ),
                   Story(
                    story: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                    answer1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
                    answer2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
                   ),
                   Story(
                    story: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                    answer1: "The", choice1Destination: 0,
                    answer2: "End", choice2Destination: 0
                   ),
                   Story(
                    story: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                    answer1: "The", choice1Destination: 0,
                    answer2: "End", choice2Destination: 0
                   ),
                   Story(
                    story: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
                    answer1: "The", choice1Destination: 0,
                    answer2: "End", choice2Destination: 0
                   )      ]
    
    func getStoryTitle() -> String{
        return Stories[storyNumber].story
    }
    
    func getButton1Title() -> String{
        return Stories[storyNumber].answer1
    }
    
    func getButton2Title() -> String{
        return Stories[storyNumber].answer2
    }
    
    mutating func nextStory(_ choise : UIButton){
        if Stories[storyNumber].answer1 == choise.currentTitle{
            storyNumber = Stories[storyNumber].choice1Destination
        }else if Stories[storyNumber].answer2 == choise.currentTitle{
            storyNumber = Stories[storyNumber].choice2Destination
        }
    }
    
}

