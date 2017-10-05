//
//  ExerciseViewController.swift
//  CopenhagenRun
//
//  Created by Irina Ernst on 7/15/17.
//  Copyright © 2017 IrinaErnst. All rights reserved.
//

import UIKit
import UICircularProgressRing

class ExerciseViewController: UIViewController, UICircularProgressRingDelegate {

    @IBOutlet weak var progressRing: UICircularProgressRingView!
    
    let progressRing1: UICircularProgressRingView? = UICircularProgressRingView()
    let progressRing2: UICircularProgressRingView? = UICircularProgressRingView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let progressRing = UICircularProgressRingView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        progressRing.animationStyle = kCAMediaTimingFunctionLinear
        progressRing.font = UIFont.systemFont(ofSize: 70)
        progressRing.maxValue = 60
        progressRing.innerRingColor = UIColor.green
//
//        let progressRing1 = UICircularProgressRingView(frame: CGRect(x: 0, y: 0, width: 180, height: 180))
//        progressRing1.animationStyle = kCAMediaTimingFunctionLinear
//        progressRing1.font = UIFont.systemFont(ofSize: 70)
//        progressRing1.maxValue = 30
//        progressRing1.innerRingColor = UIColor.green
//        
//        let progressRing2 = UICircularProgressRingView(frame: CGRect(x: 0, y: 0, width: 160, height: 160))
//        progressRing2.animationStyle = kCAMediaTimingFunctionLinear
//        progressRing2.font = UIFont.systemFont(ofSize: 70)
//        progressRing2.maxValue = 20
//        progressRing2.innerRingColor = UIColor.orange
//        
//        progressRing.setProgress(value: 0, animationDuration: 10.0){
//            print("Done animating")
//        }
//        
//        progressRing1.setProgress(value: 0, animationDuration: 10.0){
//            print("Done animating")
//        }
//        
//        progressRing2.setProgress(value: 0, animationDuration: 10.0){
//            print("Done animating")
//        }
//        
//        progressRing1.delegate = self
//        progressRing2.delegate = self
        progressRing.delegate = self
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        
        // Animate the views
        /*
         Send in the value you would like to update the view with.
         animationDuration when set to 0 causes view to not be animated.
         Optionally you can also supply a completion handler
         */
        
        // You can set the animationStyle like this
       // progressRing1.animationStyle = kCAMediaTimingFunctionLinear
        progressRing.setProgress(value: 99, animationDuration: 30, completion: nil)
//        
//        progressRing1?.setProgress(value: 50, animationDuration: 30) { [unowned self] in
//            // Increase it more, and customize some properties
//        
//            self.progressRing2?.setProgress(value: 30, animationDuration: 10) {
//                self.progressRing2?.font = UIFont.systemFont(ofSize: 50)
//                print("Ring 2 finished")
//            }
//        }
        
        // This has a max value of 10 so we set this accordingly and the view calculates how the progress should look
       // ring3.setProgress(value: 6.52, animationDuration: 6)
    }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The delegate method!
    func finishedUpdatingProgress(forRing ring: UICircularProgressRingView) {
        print("From delegate: Ring finished. YAY")
    }
}

