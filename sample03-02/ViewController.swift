//
//  ViewController.swift
//  sample03-02
//
//  Created by 河合 徳光 on 2015/10/26.
//  Copyright © 2015年 norimitsu kawai. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        let soundURL = NSBundle.mainBundle().URLForResource("BGM", withExtension: "mp3")
        do {
            player = try AVAudioPlayer(contentsOfURL: soundURL!)
            player?.numberOfLoops = -1
            player?.prepareToPlay()
            player?.play()
        } catch {
            print("error...")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

