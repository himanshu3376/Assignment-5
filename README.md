# Assignment-5
 SEG 2105 Assignment 5


Abstract and User Stories:

This project is an extension to the basic calculator application from assignment 3, this version of the project includes not only a single view calculator as seen in assignment 3, rather, it show cases 5 view controllers in total, with three different navigational tabs
the user is able to use the calculator as an individual application while having access to a sub-application of a tip calculator, which allows the user to input the total amount for a bill, it allows the user to enter the tip percentage, and the number of the indivudals
the bill will be split amongst, this will then result in an animated view controller that displays the final result. The last portion of the application ties into the calculation of an individual's body mass index (BMI). The application allows the user to input their respective
height and weight to determine their BMI, this information is then displayed on an animated view controller. The application places an emphasis on simplicity and user design, the design is produced to offer a simple, easy to follow UI. The user is able to toggle 
between the various applications with ease. 

In order to promote user experience, various assests used in the application such as the logo, app lauch screen, button UI, colour combinatios, were derieved using open source images and Adobe Photoshop, these 
assests can be located in the repository. The UI offers palce holder text in the tip calculator, to guide the user, once the results are displayed in the tip calculator and BMI calculator, an interactive button offers the user to recalculate their results, this offers the 
user to be able to navigate between different view controllers and correct themselves if mistakes were made. The calculator application also offers the user to choose a UI theme to their liking.


Future development:

Application development follows an iterative process and can continously be improved, in future developments of the application, it is ideal to have the theme reference from the calculator view controller to be reflected across all viewcontrollers. This offers consistancy
and allows for better user experience. Another function that can be implemented in the next iteration is factoring in other variables when determining the user's BMI, this can be with reference to their age.

Test Cases:

    Calculator:
        - Basic operations such as (+   -   *   /)
        - Ex. 1+1 = 2.0;    2*2 = 4.0;  4-6 = -2.0; etc.
        - Changing of the colour scheme as seen by the button.
    Tip Calculator:
        - Any integer or decimal value can be inputted, one of the three tip options seleceted, and number of people in total and calculate button pressed
        - Ex. Amount: 20.0; Tip: 10%; 2 people; should result in 22.00 total after tip and $11.00 per person.
    BMI Calculator:
        - Use the interactive slider to set user height in meters, use the interactive slider to set weight in kilograms.
        - Ex. Height: 1.81m; Weight: 80.21Kg; should result in a 24.5 BMI with a green background, and caption "Your BMI is healthy."

The test cases have also been referenced in the tutorial link below:
    https://youtu.be/0zTNb3KZhbE
    
Applications used in the development of this application:
        - XCode (Swift Programming language)
        - Adobe Photoshop (for image development and editing)
        - https://colorhunt.co/ (for colour scheme for themes in the calculator)
        - https://logomakr.com/ (for the development of the logo)

