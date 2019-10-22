//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    
    var stories = [Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
                   Story(title: "You see a Tiger", choice1: "Shout for help", choice2: "Play dead"),
                   Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")]
    var storiesIndex = 0
    
    func getTitle()-> String{
        return stories[storiesIndex].title
    }
    
    func getChoice1()-> String{
        return stories[storiesIndex].choice1
    }
    
    func getChoice2()-> String{
        return stories[storiesIndex].choice2
    }
    
    mutating func nextStory(userChoice: String) -> Int{
        
        if userChoice == getChoice1(){
            storiesIndex = 1
        }
        else if userChoice == getChoice2() {
            storiesIndex = 2
        }
        
        return storiesIndex
        
    }
    
    
}


