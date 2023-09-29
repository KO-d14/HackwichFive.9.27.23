//
//  firstViewController.swift
//  HackwichFive.9.27.23
//
//  Created by Aina Kodaira on 9/29/23.
//

import UIKit
// PART 1: Create a New Xcode Project (2 points):

// PART 2: Remove VC and Add a Tab Bar Controller (2 points)
// NOTE: CREATED NAV BAR CONTROLLER EVEN THO INSTRUCTION DOESN'T SAY

// PART 4: Set Top Label’s Text (2 points)
    /*1. Set the topLabel’s text to: “My Favorite Foods:” (in code) and have the text display in the label when the app first opens. Please note this is the top label on your VC.*/

// PART 5: Declare and Assign two variables (2 points)
//1. Declare a variable of type Integer and name it “currentIndex” and assign it to the  integer, 0.
 var currentIndex = 0
//2. Declare an array variable and name it, “favoriteFoodsArray” and assign it to 5 items of type String that are the names of your favorite foods.
var favoriteFoodsArray = ["Ice Cream", "Dim Sum", "Bread", "Sushi", "Soup/Stew-Related"]

// PART 7: Set an image for the Tab Bar Item and Change the attributes for the button (2 points)
    /*
     1.Set an image for the Tab Bar Item.
     2.Change attributes for the button (if you havenʻt yet)
     3. Change the text for the button to “See My Fave Foods”
     4. Run the simulator. Please feel free to review my simulator recording. Also, what happens if you press the button more than once? Notice that if you press the button again, it doesn’t iterate through the array. What code do we need to add to our IBAction that will enable the button to iterate through the array upon a button press? We will work on this part in Week 7.
     */
//I believe you will need to run the for loop 

class firstViewController: UIViewController {

// PART 3: Customize ViewController (top) in Storyboard and Create IBActions (3 points)
    /*
     1.Customize your VC in Storyboard with 2 labels and 1 button
     2. Create 2 IBOutlets: 1 per Label and Create 1 IBAction and name it: “buttonPressed”.
     3. Name your IBOutlets respectively:
     For the top label please name the outlet: “topLabel”
     For the bottom label please name the outlet: “bottomLabel”
     */
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//Part 6: Display the first item in the array upon button press (3 points)
        //1. When the button is pressed, set the “bottomLabel” text to display the first item in the array.
    @IBAction func buttonPressed(_ sender: Any)
    {
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
        //OR
        //self.bottomLabel.text = favoriteFoodsArray[0]


    }
    
    
}
