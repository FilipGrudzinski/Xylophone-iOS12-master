//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016. Modifed by Filip Gru 20/09/2018
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
  
    let soundsArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundPicked: soundsArray[sender.tag - 1])
        
    }
    
    
    func playSound(soundPicked: String) {
        
        let xylophoneSounds = Bundle.main.path(forResource: "\(soundPicked)", ofType: "wav")
        
        do {
            
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: xylophoneSounds!))
            player.play()
            
        } catch {
            
            print(error)
            
        }
        
        
    }
    
}

