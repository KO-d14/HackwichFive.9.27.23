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
    
//For WEEK 7 Part 1 #3.a
    //  a. → First: Create an IBOutlet for the Button and name it “buttonLabel”. This is so we can access and set the title for our button.
    @IBOutlet weak var buttonLabel: UIButton!
    
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
        

// ************ Week 7: Hackwich Five Part 2: Iterating Through Arrays ******************
// In Breakout Rooms:
// Part 1: Set up a if/else statement to iterate through each item in array upon button press (10 points)
    /* 1. In order to iterate through the array, you will need to:
            Create a conditional statement that compares currentIndex to the number of items in the array. HINT: How do you get the number of items in the array? Refer to Project #1 Guidelines
         
                2. (written in above designated line of code)
          
                3. Programmatically in code, set the Button’s title to “Next” to indicate that there are still items in the array to display.
     
                4. (written in above designated line of code)
                5. (written in above designated line of code)

         Stop: Commit & Push. Suggested Commit Message: Completed Parts 1-8.
         Proceed to the Problem Sets */

       
       
        if currentIndex < favoriteFoodsArray.count - 1
            {
//FOR WEEK 7 Part 1 #2. Set the bottomLabel to display the item in the array based on the conditional statement you set up.
                self.bottomLabel.text = favoriteFoodsArray[currentIndex]
//For WEEK 7 Part 1 #3.b
            /* → Second: Set the state of the button (which is a UIcontrol) to a normal state or an enabled state. Type the line of code in blue below into the if code block. https://developer.apple.com/documentation/uikit/uicontrol/state
                        buttonLabel.setTitle("Next", for: UIControl.State.normal) */
                buttonLabel.setTitle("Next", for: UIControl.State.normal)
//For WEEK 7 Part 1 #4
            /* xIn order to access the next element in the array, we need to increase currentIndex by 1. Add the line of code in blue below into the if code block.
                                        currentIndex += 1
             */
                currentIndex += 1
            }//end bracket of if statment
            else
            {
//For WEEK 7 Part 1 #5
                /* Now, we need to disable the button once all items in the array have been displayed in the label. Type the line of code in blue below into the else code block.
                 
                                    print(“button has been disabled”)
                                (buttonLabel as! UIButton).isEnabled=false
                 */
                print("button has been disabled")
            //THIS CODE CAME OUT AS ERROR --> (buttonLabel as! UIButton).isEnabled = false
                (buttonLabel!).isEnabled = false

            }//end for else statement
        

    }//end for IBAction buttonPressed
    
// ------------ COMMITED AND PUSHED- wrote "Completed Parts 1-8" -----------------
    
//IGNORE CODE BELOW - MAY DELETE LATER
    /* for (currentIndex; currentIndex < favoriteFoodsArray.length; currentIndex++)
         //food in favoriteFoodsArray.count {
         if currentIndex < favoriteFoodsArray.length
     {
         
     }
     else
     {
         
     } */

// WEEK 7: ---------- Problem Sets 1 & 2 & Simulator Recording: ----------------
//Problem Set #1: Adding Comments to Code in IBAction in First Tab (6 points)
        //1. Write a comment in your own words for each line of code in the IBAction code block. You should have 6 comments total. Please begin each comment with comment #1, comment #2, etc.


 //Problem Set #2: Please repeat Part 1 for your Tab #2 (6 points)

 //Simulator Recording (6 points):
 Record your simulator showing your final build for tabs 1 & 2 and upload your link to Laulima for this assignment. Please be sure that you have adjusted the size and display lines for your labels so that the text doesnʻt get cut off. If your text is cut off, you will incur -2 point deduction from your recording grade.


 //Stop: Commit & Push





}

