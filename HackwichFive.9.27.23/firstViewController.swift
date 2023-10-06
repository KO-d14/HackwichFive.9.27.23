//
//  firstViewController.swift
//  HackwichFive.9.27.23
//
//  Created by Aina Kodaira on 9/29/23.
//

import UIKit
//------------------ Hackwich #5 Part 1: Working W/ Arrays --------------------
    // Has parts 1-7 & Problem Set for Tab 2
// PART 1: Create a New Xcode Project (2 points):

// PART 2: Remove VC and Add a Tab Bar Controller (2 points)
// NOTE: CREATED NAV BAR CONTROLLER EVEN THO INSTRUCTION DOESN'T SAY

// (PART 3 WRITTEN SOMEWHERE BELOW)

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

// HW5 PART 1 WORKING W/ ARRAYS PART 3: Customize ViewController (top) in Storyboard and Create IBActions (3 points)
    /*
     1.Customize your VC in Storyboard with 2 labels and 1 button
     2. Create 2 IBOutlets: 1 per Label and Create 1 IBAction and name it: “buttonPressed”.
     3. Name your IBOutlets respectively:
     For the top label please name the outlet: “topLabel”
     For the bottom label please name the outlet: “bottomLabel”
     */
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
//For WEEK 7 HW5 Part 1 #3.a ITERATING THRU ARRAYS
    //  a. → First: Create an IBOutlet for the Button and name it “buttonLabel”. This is so we can access and set the title for our button.
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//Hackwich 5 Part 1- Working w/ Arrays, Part 4: Set Top Label’s Text (2 points)
        topLabel.text = "😋 My Favorite Foods:"
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


    @IBAction func buttonPressed(_ sender: Any)
    {
        
        //WORKING W/ ARRAYS Part 6: Display the first item in the array upon button press (3 points)
                //1. When the button is pressed, set the “bottomLabel” text to display the first item in the array.
       // self.bottomLabel.text = favoriteFoodsArray[currentIndex]
        //OR
        //self.bottomLabel.text = favoriteFoodsArray[0]
        

// ************ Week 7: Hackwich Five Part 2: Iterating Through Arrays ******************
            // Part 1 w/ #1-5 & Problem Set #1,2
// In Breakout Rooms:
// Part 1: Set up a if/else statement to iterate through each item in array upon button press (10 points)
    /* #1. In order to iterate through the array, you will need to:
            Create a conditional statement that compares currentIndex to the number of items in the array. HINT: How do you get the number of items in the array? Refer to Project #1 Guidelines
         
                #2. (written in above designated line of code)
          
                #3. Programmatically in code, set the Button’s title to “Next” to indicate that there are still items in the array to display.
     
                #4. (written in above the designated line of code)
                #5. (written in above the designated line of code)

         Stop: Commit & Push. Suggested Commit Message: Completed Parts 1-8.
         Proceed to the Problem Sets */

       
//COMMENT #1: a conditional statment will be checked each time the code is looped.
        // It will first check the statement in the IF to see if currentIndex is within the length of the favoriteFoodsArray.
        // We used ".count" to get the total # of indices used in the array, however, using " - 1" bc the space after the the finished count is also taken as consideration and we will need to minus that to get the actual number of indices for the array
        if currentIndex < favoriteFoodsArray.count
            {
//FOR WEEK 7 Part 1 #2. Set the bottomLabel to display the item in the array based on the conditional statement you set up.
            
//COMMENT #2: if the currentIndex of the loop this conditional statement is less than the length of the array, then this block of code will execute
            // the line of code below will display the text of the currentIndex (which is set to 0) in the favoriteFoodsArray (which is Ice Cream) in the bottom label in VC (labeled as "bottomLabel") when the button at the bottom is pressed
                self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            
//For WEEK 7 Part 1 #3.b
            /* → Second: Set the state of the button (which is a UIcontrol) to a normal state or an enabled state. Type the line of code in blue below into the if code block. https://developer.apple.com/documentation/uikit/uicontrol/state
                        buttonLabel.setTitle("Next", for: UIControl.State.normal) */
//COMMENT #3: After displaying the text of the "currentIndex" within the "favoriteFoodsArray", the text within the button below (labeled as "buttonLabel") will change to "Next" to signify that there are more contents to be shown
                buttonLabel.setTitle("Next", for: UIControl.State.normal)
            
//For WEEK 7 Part 1 #4
            /* In order to access the next element in the array, we need to increase currentIndex by 1. Add the line of code in blue below into the if code block.
                                        currentIndex += 1
             */
//COMMENT #4: Lastly within this code block, once the code above has been performed, the code below will add an extra amount to the "currentIndex" to signify completion of the currentIndex. So that when it loops, it will move up to the next index and repeats until it has gone through all the indices in the array
                currentIndex += 1
            }//end bracket of if statment
            else
            {
//For WEEK 7 Part 1 #5
                /* Now, we need to disable the button once all items in the array have been displayed in the label. Type the line of code in blue below into the else code block.
                 
                                    print(“button has been disabled”)
                                (buttonLabel as! UIButton).isEnabled=false
                 */
//COMMENT #5: This block of code will exeute once the code sees in the conditional statement that it has run through all the indices in the array.
                // It will print notifying that the button has been disabled in the terminal
                print("button has been disabled")
            //THIS CODE CAME OUT AS ERROR --> (buttonLabel as! UIButton).isEnabled = false
//COMMENT #6: it will then change the buttonLabel as false
                /* a breakdown of this is:
- (buttonLabel!) <-- The ! symbol means you're forcing the container to reveal what's inside, even if it's empty
- When you write (buttonLabel!).isEnabled, you're telling the computer, "I'm sure that buttonLabel has a value, so let me access its isEnabled property."
- a good metaphor to understand: So, using (buttonLabel!).isEnabled is a bit like saying, "I'm absolutely sure there's a cookie in the jar, so I'll just reach in without checking. But if the jar is empty, I'll accidentally break it."
                 */
                (buttonLabel!).isEnabled = false

            }//end for else statement
        

    }//closing bracket for IBAction buttonPressed
    
// ------------ COMMITED AND PUSHED- wrote "Completed Parts 1-8" -----------------
    
//IGNORE CODE BELOW - MAY DELETE LATER
//~~~~~~~~~~~~~~~~~~~~~~
    /* for (currentIndex; currentIndex < favoriteFoodsArray.length; currentIndex++)
         //food in favoriteFoodsArray.count {
         if currentIndex < favoriteFoodsArray.length
     {
         
     }
     else
     {
         
     } */
// IGNORE CODE ABOVE - MAY DELETE LATER 
//~~~~~~~~~~~~~~~~~~~~

// WEEK 7: ---------- Problem Sets 1 & 2 & Simulator Recording: ----------------
//Problem Set #1: Adding Comments to Code in IBAction in First Tab (6 points)
        //1. Write a comment in your own words for each line of code in the IBAction code block. You should have 6 comments total. Please begin each comment with comment #1, comment #2, etc.
// I believe I have completed this

    //Problem Set #2: Please repeat Part 1 for your Tab #2 (6 points)

 //Simulator Recording (6 points):
 //Record your simulator showing your final build for tabs 1 & 2 and upload your link to Laulima for this assignment. Please be sure that you have adjusted the size and display lines for your labels so that the text doesnʻt get cut off. If your text is cut off, you will incur -2 point deduction from your recording grade.


 //Stop: Commit & Push





}

