//
//  ViewController.swift
//  KatesGemVideoApp
//
//  Created by KatesAndroid on 2021/1/28 PM 4:00 - 5:00
//  深愛鄧紫棋，謝謝您提供美好和有影響力的音樂給世界！

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // call segue, then prepare method called
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let urlForGem = Bundle.main.url(forResource: "gemMusic", withExtension: "mp4"){
            
            let vcForGem = segue.destination as! AVPlayerViewController
            
            vcForGem.player = AVPlayer(url: urlForGem)
            
        }
        
        
    }


}


