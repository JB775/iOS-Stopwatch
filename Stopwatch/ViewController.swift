//
//  ViewController.swift
//  Stopwatch
//
//  Created by jbergandino on 3/18/16.
//  Copyright © 2016 gotrackingtechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Time Variables
    var time = 0.00
    
    @IBOutlet weak var isEnabled: UIBarButtonItem!
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = NSTimer()
    
    @IBAction func startButton(sender: AnyObject) {
        
        isEnabled.enabled = false
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func stopButton(sender: AnyObject) {
        
        isEnabled.enabled = true
        timer.invalidate()
    }
    
    @IBAction func resetButton(sender: AnyObject) {
    
        isEnabled.enabled = true
        timer.invalidate()
        time = 0.00
        timerLabel.text = "0.00"
    }
    
    func increaseTimer(){
    
        time++
        timerLabel.text = "\(time/100)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

