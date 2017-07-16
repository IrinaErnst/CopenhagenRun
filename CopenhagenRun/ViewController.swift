//
//  ViewController.swift
//  CopenhagenRun
//
//  Created by Irina Ernst on 7/15/17.
//  Copyright © 2017 IrinaErnst. All rights reserved.
//

import UIKit
import UICircularProgressRing

class ViewController: UIViewController, UICircularProgressRingDelegate {

    @IBOutlet weak var progressRing: UICircularProgressRingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressRing.animationStyle = kCAMediaTimingFunctionLinear
        @IBAction func startButtonPressed(_ sender: Any) {
        }
        progressRing.font = UIFont.systemFont(ofSize: 70)
        progressRing.maxValue = 50
        progressRing.innerRingColor = UIColor.blue
        
        progressRing.setProgress(value: 30, animationDuration: 10.0){
            print("Done animating")
        }
        
        progressRing.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The delegate method!
    func finishedUpdatingProgress(forRing ring: UICircularProgressRingView) {
        if ring === ring1 {
            print("From delegate: Ring 1 finished")
        } else if ring === ring2 {
            print("From delegate: Ring 2 finished")
        }
    }


}

