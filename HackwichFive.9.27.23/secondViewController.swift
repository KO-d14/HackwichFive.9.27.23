//
//  secondViewController.swift
//  HackwichFive.9.27.23
//
//  Created by Aina Kodaira on 9/29/23.
//

import UIKit
/*
 PROBLEM SET for TAB 2: My Favorite Shows/Movies (10 points total)

For Tab 2, you will follow steps part 2-7. (instructions written in "firstViewController" file
You will create an array that contains your 5 favorite shows or movies and display the third item in your array.
Record your simulator and submit the link to your recording via Laulima for this assignment. (5 points)
*/

class secondViewController: UIViewController {

//PART 5
// ??? Unsure if we still need to repeat part 5-#1: declare & assign currentIndex to 0; I wrote the code just in case 
    var currentIndex = 0
    var favoriteShowsMoviesArray = ["Kiki's Delivery Service", "Courage the Cowardly Dog", "Deadpool", "Unwrapped", "The British Baking Show"]
//PART 3
    @IBOutlet weak var topLabelVC2: UILabel!
    
    @IBOutlet weak var bottomLabelVC2: UILabel!
    
    @IBOutlet weak var buttonLabelVC2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        topLabelVC2.text = "🎥 My Favorite Shows/Movies"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//WEEK 7, Problem Set #2: Please repeat Part 1 for your Tab #2 (6 points)
    @IBAction func buttonPressedVC2(_ sender: Any)
    {
//Problem set tab #2, #2. You will create an array that contains your 5 favorite shows or movies and display the third item in your array.
       //COMMENTING OUT BC THIS IS FROM HACKWICH 5- WORKING WITH ARRAYS  self.bottomLabelVC2.text = favoriteShowsMoviesArray[2]
//WEEK 7 PROBLEM SET #2
        if currentIndex < favoriteShowsMoviesArray.count 
        {
            self.bottomLabelVC2.text = favoriteShowsMoviesArray[currentIndex]
            
            buttonLabelVC2.setTitle("Next", for: UIControl.State.normal)
            
            currentIndex += 1 
        } //closing bracket for if
        else
        {
            print("button has been disabled")
            
            (buttonLabelVC2!).isEnabled = false 
        } //closing bracket for else
    } //closing bracket for IBAction func buttonPressedVC2
    
//COMPLETED ALL ASSIGNMENTS - submitted video recording of my code results in laulima and uploaded in google drive
}
