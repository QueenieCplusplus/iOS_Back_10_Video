# iOS_Back_10_Video
Picture in Picture using AVFoundation &amp; AVKit

* add mp4 res hereby => Target -> Build Phase -> Copy Bundle Res 

   ![](https://raw.githubusercontent.com/QueenieCplusplus/iOS_Back_10_Video/main/build%20phase%20-%20Bundle%20res.png)

* in Storyboard, using AVKit Player View Controller

   ![](https://raw.githubusercontent.com/QueenieCplusplus/iOS_Back_10_Video/main/AVKit%20Player%20VC.png)
   
* output

![](https://raw.githubusercontent.com/QueenieCplusplus/iOS_Back_10_Video/main/output%201.png)

![](https://raw.githubusercontent.com/QueenieCplusplus/iOS_Back_10_Video/main/output%202.png)

* code see:

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
