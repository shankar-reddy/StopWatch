//
//  ViewController.swift
//  StopWatch
//
//  Created by SANKARA TELUKUTLA on 10/12/15.
//  Copyright © 2015 SANKARA TELUKUTLA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timerLabel: UILabel!
    
    var time = 0
    var timer = NSTimer()
    
    func runTimer(){
        time++
        timerLabel.text = "\(time)"
        timerLabel.textColor = UIColor.blueColor()
    }
    
    @IBAction func stopAction(sender: AnyObject) {
        timer.invalidate()
        time = 0
    }
    
    @IBAction func playAction(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("runTimer"),userInfo: nil, repeats: true)
    
    }
    
    @IBAction func refresh(sender: AnyObject) {
        
        timer.invalidate()
        time = 0
        timerLabel.text = "\(time)"
        
    }
    
    
    @IBAction func pauseAction(sender: AnyObject) {
        timer.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

