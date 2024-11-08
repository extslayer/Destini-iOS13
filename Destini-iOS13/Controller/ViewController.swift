//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(index: storyBrain.storiesIndex)
    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        
        let choice = sender.currentTitle!
        updateUI(index: storyBrain.nextStory(userChoice: choice, Index: 0))
        
    }
    
    func updateUI(index: Int){
        
        storyLabel.text = storyBrain.getTitle(Index: index)
        choice1Button.setTitle(storyBrain.getChoice1(Index: index), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(Index: index), for: .normal)
        
    }
    
}

