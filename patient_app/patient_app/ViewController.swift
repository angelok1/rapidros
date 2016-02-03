//
//  ViewController.swift
//  patient_app
//
//  Created by Angelo Kastroulis on 10/24/15.
//  Copyright © 2015 Bravado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonQ1Y: UIButton!
    @IBOutlet weak var buttonQ2Y: UIButton!
    @IBOutlet weak var buttonQ3Y: UIButton!
    @IBOutlet weak var buttonQ4Y: UIButton!
    @IBOutlet weak var buttonQ5Y: UIButton!
    @IBOutlet weak var buttonQ6Y: UIButton!
    @IBOutlet weak var buttonQ7Y: UIButton!
    @IBOutlet weak var buttonQ8Y: UIButton!
    @IBOutlet weak var buttonQ9Y: UIButton!
    @IBOutlet weak var buttonQ10Y: UIButton!
    @IBOutlet weak var buttonQ11Y: UIButton!
    @IBOutlet weak var buttonQ12Y: UIButton!
    @IBOutlet weak var buttonQ13Y: UIButton!
    
    @IBOutlet weak var buttonQ1N: UIButton!
    @IBOutlet weak var buttonQ2N: UIButton!
    @IBOutlet weak var buttonQ3N: UIButton!
    @IBOutlet weak var buttonQ4N: UIButton!
    @IBOutlet weak var buttonQ5N: UIButton!
    @IBOutlet weak var buttonQ6N: UIButton!
    @IBOutlet weak var buttonQ7N: UIButton!
    @IBOutlet weak var buttonQ8N: UIButton!
    @IBOutlet weak var buttonQ9N: UIButton!
    @IBOutlet weak var buttonQ10N: UIButton!
    @IBOutlet weak var buttonQ11N: UIButton!
    @IBOutlet weak var buttonQ12N: UIButton!
    @IBOutlet weak var buttonQ13N: UIButton!
    
    
    @IBOutlet weak var imageQ1Y: UIImageView!
    @IBOutlet weak var imageQ1N: UIImageView!
    
    @IBOutlet weak var imageQ2Y: UIImageView!
    @IBOutlet weak var imageQ2N: UIImageView!
    
    @IBOutlet weak var imageQ3Y: UIImageView!
    @IBOutlet weak var imageQ3N: UIImageView!
    
    @IBOutlet weak var imageQ4Y: UIImageView!
    @IBOutlet weak var imageQ4N: UIImageView!
    
    @IBOutlet weak var imageQ5Y: UIImageView!
    @IBOutlet weak var imageQ5N: UIImageView!
    
    @IBOutlet weak var imageQ6Y: UIImageView!
    @IBOutlet weak var imageQ6N: UIImageView!
    
    @IBOutlet weak var imageQ7Y: UIImageView!
    @IBOutlet weak var imageQ7N: UIImageView!
    
    @IBOutlet weak var imageQ8Y: UIImageView!
    @IBOutlet weak var imageQ8N: UIImageView!
    
    @IBOutlet weak var imageQ9Y: UIImageView!
    @IBOutlet weak var imageQ9N: UIImageView!
    
    @IBOutlet weak var imageQ10Y: UIImageView!
    @IBOutlet weak var imageQ10N: UIImageView!
    
    @IBOutlet weak var imageQ11Y: UIImageView!
    @IBOutlet weak var imageQ11N: UIImageView!
    
    @IBOutlet weak var imageQ12Y: UIImageView!
    @IBOutlet weak var imageQ12N: UIImageView!
    
    @IBOutlet weak var imageQ13Y: UIImageView!
    @IBOutlet weak var imageQ13N: UIImageView!
    
    @IBAction func buttonQ1Yclick(sender: AnyObject) {
        self.setValue(buttonQ1Y, button2: buttonQ1N, yesno: true, image1: imageQ1Y, image2: imageQ1N )
        question_data.Fever = true;
    }
    @IBAction func buttonQ1Nclick(sender: AnyObject) {
        self.setValue(buttonQ1Y, button2: buttonQ1N, yesno: false, image1: imageQ1Y, image2: imageQ1N )
        question_data.Fever = false;
    }
    @IBAction func buttonQ2Yclick(sender: AnyObject) {
        self.setValue(buttonQ2Y, button2: buttonQ2N, yesno: true, image1: imageQ2Y, image2: imageQ2N )
        question_data.WeightLoss = true;
    }
    @IBAction func buttonQ3Yclick(sender: AnyObject) {
        self.setValue(buttonQ3Y, button2: buttonQ3N, yesno: true, image1: imageQ3Y, image2: imageQ3N )
    }
    @IBAction func buttonQ4Yclick(sender: AnyObject) {
        self.setValue(buttonQ4Y, button2: buttonQ4N, yesno: true, image1: imageQ4Y, image2: imageQ4N )
    }
    @IBAction func buttonQ5Yclick(sender: AnyObject) {
        self.setValue(buttonQ5Y, button2: buttonQ5N, yesno: true, image1: imageQ5Y, image2: imageQ5N )
    }
    @IBAction func buttonQ6Yclick(sender: AnyObject) {
        self.setValue(buttonQ6Y, button2: buttonQ6N, yesno: true, image1: imageQ6Y, image2: imageQ6N )
    }
    @IBAction func buttonQ7Yclick(sender: AnyObject) {
        self.setValue(buttonQ7Y, button2: buttonQ7N, yesno: true, image1: imageQ7Y, image2: imageQ7N )
    }
    @IBAction func buttonQ8Yclick(sender: AnyObject) {
        self.setValue(buttonQ8Y, button2: buttonQ8N, yesno: true, image1: imageQ8Y, image2: imageQ8N )
    }
    @IBAction func buttonQ9Yclick(sender: AnyObject) {
        self.setValue(buttonQ9Y, button2: buttonQ9N, yesno: true, image1: imageQ9Y, image2: imageQ9N )
    }
    @IBAction func buttonQ10Yclick(sender: AnyObject) {
        self.setValue(buttonQ10Y, button2: buttonQ10N, yesno: true, image1: imageQ10Y, image2: imageQ10N )
        question_data.Fatigue = true;
    }
    @IBAction func buttonQ11Yclick(sender: AnyObject) {
        self.setValue(buttonQ11Y, button2: buttonQ11N, yesno: true, image1: imageQ11Y, image2: imageQ11N )
    }
    @IBAction func buttonQ12Yclick(sender: AnyObject) {
        self.setValue(buttonQ12Y, button2: buttonQ12N, yesno: true, image1: imageQ12Y, image2: imageQ12N )
        question_data.LossAppetite = true;
    }
    @IBAction func buttonQ13Yclick(sender: AnyObject) {
        self.setValue(buttonQ13Y, button2: buttonQ13N, yesno: true, image1: imageQ13Y, image2: imageQ13N )
    }

    
    @IBAction func buttonQ2Nclick(sender: AnyObject) {
        self.setValue(buttonQ2Y, button2: buttonQ2N, yesno: false, image1: imageQ2Y, image2: imageQ2N )
        question_data.WeightLoss = false;
    }
    @IBAction func buttonQ3Nclick(sender: AnyObject) {
        self.setValue(buttonQ3Y, button2: buttonQ3N, yesno: false, image1: imageQ3Y, image2: imageQ3N )
    }
    @IBAction func buttonQ4Nclick(sender: AnyObject) {
        self.setValue(buttonQ4Y, button2: buttonQ4N, yesno: false, image1: imageQ4Y, image2: imageQ4N )
    }
    @IBAction func buttonQ5Nclick(sender: AnyObject) {
        self.setValue(buttonQ5Y, button2: buttonQ5N, yesno: false, image1: imageQ5Y, image2: imageQ5N )
    }
    @IBAction func buttonQ6Nclick(sender: AnyObject) {
        self.setValue(buttonQ6Y, button2: buttonQ6N, yesno: false, image1: imageQ6Y, image2: imageQ6N )
    }
    @IBAction func buttonQ7Nclick(sender: AnyObject) {
        self.setValue(buttonQ7Y, button2: buttonQ7N, yesno: false, image1: imageQ7Y, image2: imageQ7N )
    }
    @IBAction func buttonQ8Nclick(sender: AnyObject) {
        self.setValue(buttonQ8Y, button2: buttonQ8N, yesno: false, image1: imageQ8Y, image2: imageQ8N )
    }
    @IBAction func buttonQ9Nclick(sender: AnyObject) {
        self.setValue(buttonQ9Y, button2: buttonQ9N, yesno: false, image1: imageQ9Y, image2: imageQ9N )
    }
    @IBAction func buttonQ10Nclick(sender: AnyObject) {
        self.setValue(buttonQ10Y, button2: buttonQ10N, yesno: false, image1: imageQ10Y, image2: imageQ10N )
                question_data.Fatigue = false;
    }
    @IBAction func buttonQ11Nclick(sender: AnyObject) {
        self.setValue(buttonQ11Y, button2: buttonQ11N, yesno: false, image1: imageQ11Y, image2: imageQ11N )
    }
    @IBAction func buttonQ12Nclick(sender: AnyObject) {
        self.setValue(buttonQ12Y, button2: buttonQ12N, yesno: false, image1: imageQ12Y, image2: imageQ12N )
        question_data.LossAppetite = false;
    }
    @IBAction func buttonQ13Nclick(sender: AnyObject) {
        self.setValue(buttonQ13Y, button2: buttonQ13N, yesno: false, image1: imageQ13Y, image2: imageQ13N )
    }
    
    @IBAction func buttonInfectiousNoToAllclick(sender: AnyObject) {
        if(imageQ1Y.hidden == true){
            self.setValue(buttonQ1Y, button2: buttonQ1N, yesno: false, image1: imageQ1Y, image2: imageQ1N )
        }
        if(imageQ2Y.hidden == true){
            self.setValue(buttonQ2Y, button2: buttonQ2N, yesno: false, image1: imageQ2Y, image2: imageQ2N )
        }
        if(imageQ3Y.hidden == true){
            self.setValue(buttonQ3Y, button2: buttonQ3N, yesno: false, image1: imageQ3Y, image2: imageQ3N )
        }
        if(imageQ4Y.hidden == true){
            self.setValue(buttonQ4Y, button2: buttonQ4N, yesno: false, image1: imageQ4Y, image2: imageQ4N )
        }
        if(imageQ5Y.hidden == true){
            self.setValue(buttonQ5Y, button2: buttonQ5N, yesno: false, image1: imageQ5Y, image2: imageQ5N )
        }
    }
    
    @IBAction func buttonChestNoToAllclick(sender: AnyObject) {
        if(imageQ6Y.hidden == true){
            self.setValue(buttonQ6Y, button2: buttonQ6N, yesno: false, image1: imageQ6Y, image2: imageQ6N )
        }
        if(imageQ7Y.hidden == true){
            self.setValue(buttonQ7Y, button2: buttonQ7N, yesno: false, image1: imageQ7Y, image2: imageQ7N )
        }
        if(imageQ8Y.hidden == true){
            self.setValue(buttonQ8Y, button2: buttonQ8N, yesno: false, image1: imageQ8Y, image2: imageQ8N )
        }
        if(imageQ9Y.hidden == true){
            self.setValue(buttonQ9Y, button2: buttonQ9N, yesno: false, image1: imageQ9Y, image2: imageQ9N )
        }

    }
    
    @IBAction func buttonAbdomenNoToAllclick(sender: AnyObject) {
        if(imageQ10Y.hidden == true){
            self.setValue(buttonQ10Y, button2: buttonQ10N, yesno: false, image1: imageQ10Y, image2: imageQ10N )
        }
        if(imageQ11Y.hidden == true){
            self.setValue(buttonQ11Y, button2: buttonQ11N, yesno: false, image1: imageQ11Y, image2: imageQ11N )
        }
        if(imageQ12Y.hidden == true){
            self.setValue(buttonQ12Y, button2: buttonQ12N, yesno: false, image1: imageQ12Y, image2: imageQ12N )
        }
        if(imageQ13Y.hidden == true){
            self.setValue(buttonQ13Y, button2: buttonQ13N, yesno: false, image1: imageQ13Y, image2: imageQ13N )
        }
    }
    
    @IBAction func buttonInfectiousYesToAllclick(sender: AnyObject) {
        if(imageQ1N.hidden == true){
            self.setValue(buttonQ1Y, button2: buttonQ1N, yesno: true, image1: imageQ1Y, image2: imageQ1N )
        }
        if(imageQ2N.hidden == true){
            self.setValue(buttonQ2Y, button2: buttonQ2N, yesno: true, image1: imageQ2Y, image2: imageQ2N )
        }
        if(imageQ3N.hidden == true){
            self.setValue(buttonQ3Y, button2: buttonQ3N, yesno: true, image1: imageQ3Y, image2: imageQ3N )
        }
        if(imageQ4N.hidden == true){
            self.setValue(buttonQ4Y, button2: buttonQ4N, yesno: true, image1: imageQ4Y, image2: imageQ4N )
        }
        if(imageQ5N.hidden == true){
            self.setValue(buttonQ5Y, button2: buttonQ5N, yesno: true, image1: imageQ5Y, image2: imageQ5N )
        }
    }
    
    @IBAction func buttonChestYesToAllclick(sender: AnyObject) {
        if(imageQ6N.hidden == true){
            self.setValue(buttonQ6Y, button2: buttonQ6N, yesno: true, image1: imageQ6Y, image2: imageQ6N )
        }
        if(imageQ7N.hidden == true){
            self.setValue(buttonQ7Y, button2: buttonQ7N, yesno: true, image1: imageQ7Y, image2: imageQ7N )
        }
        if(imageQ8N.hidden == true){
            self.setValue(buttonQ8Y, button2: buttonQ8N, yesno: true, image1: imageQ8Y, image2: imageQ8N )
        }
        if(imageQ9N.hidden == true){
            self.setValue(buttonQ9Y, button2: buttonQ9N, yesno: true, image1: imageQ9Y, image2: imageQ9N )
        }
        
    }
    
    @IBAction func buttonAbdomenYesToAllclick(sender: AnyObject) {
        if(imageQ10N.hidden == true){
            self.setValue(buttonQ10Y, button2: buttonQ10N, yesno: true, image1: imageQ10Y, image2: imageQ10N )
        }
        if(imageQ11N.hidden == true){
            self.setValue(buttonQ11Y, button2: buttonQ11N, yesno: true, image1: imageQ11Y, image2: imageQ11N )
        }
        if(imageQ12N.hidden == true){
            self.setValue(buttonQ12Y, button2: buttonQ12N, yesno: true, image1: imageQ12Y, image2: imageQ12N )
        }
        if(imageQ13N.hidden == true){
            self.setValue(buttonQ13Y, button2: buttonQ13N, yesno: true, image1: imageQ13Y, image2: imageQ13N )
        }
    }
    
    @IBAction func buttonStartOverAllclick(sender: AnyObject) {
        imageQ1Y.hidden = true;
        imageQ2Y.hidden = true;
        imageQ3Y.hidden = true;
        imageQ4Y.hidden = true;
        imageQ5Y.hidden = true;
        imageQ6Y.hidden = true;
        imageQ7Y.hidden = true;
        imageQ8Y.hidden = true;
        imageQ9Y.hidden = true;
        imageQ10Y.hidden = true;
        imageQ11Y.hidden = true;
        imageQ12Y.hidden = true;
        imageQ13Y.hidden = true;
        
        imageQ1N.hidden = true;
        imageQ2N.hidden = true;
        imageQ3N.hidden = true;
        imageQ4N.hidden = true;
        imageQ5N.hidden = true;
        imageQ6N.hidden = true;
        imageQ7N.hidden = true;
        imageQ8N.hidden = true;
        imageQ9N.hidden = true;
        imageQ10N.hidden = true;
        imageQ11N.hidden = true;
        imageQ12N.hidden = true;
        imageQ13N.hidden = true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setValue(button1: UIButton, button2: UIButton, yesno:Bool, image1: UIImageView, image2: UIImageView){
        image1.hidden = !yesno;
        image2.hidden = yesno;
        
        
    }


}

