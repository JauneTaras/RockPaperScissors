//Rock Paper Scissors
//Version 3

//Code by Jaune Taraskeviciute
//15/09/2017

int buttonX=150;        //horizontal middle of button
int buttonY=50;         //vertical middle of button
int buttonW=175;        //width of button
int buttonH=50;         //height of button

int buttonX2=350;        //horizontal middle of button 2
int buttonY2=50;         //vertical middle of button 2
int buttonW2=175;        //width of button 2
int buttonH2=50;         //height of button 2 

int buttonX3=550;        //horizontal middle of button 3
int buttonY3=50;         //vertical middle of button 3
int buttonW3=175;        //width of button 3
int buttonH3=50;         //height of button 3

char compLetter;         //Declares the global variable of the computer's output
char userChoice;         //Declares the global variable of user's choice

void setup()  //Initialises the program
{
  
  size(700,400);  //Sets the size of the program output screen
  textAlign(CENTER);  //Aligns text to the middle
  textFont(createFont("Georgia", 24));  //Sets the font and fontsize
  background(255);  //Creates white background
  rectMode(CENTER); //Draws the rectangle from the middle of the coordinates

}

void draw()  //Constantly refreshes through the program
{  
  
  fill(255);  //Sets the colour to white for the code below - i.e. white rectangle
   
  //Creates the buttons
  rect(buttonX,buttonY,buttonW,buttonH,25);
  rect(buttonX2,buttonY2,buttonW2,buttonH2,25);
  rect(buttonX3,buttonY3,buttonW3,buttonH3,25);
  
  fill(0); //Sets the colour to black for the code beneath in this method - i.e. black text
  
  //Labels the buttons
  text("Rock",buttonX,buttonY+5);
  text("Paper",buttonX2,buttonY2+5);
  text("Scissors",buttonX3,buttonY3+5);
  
}
 
void mouseClicked()
{
  
  background(255); //Clears background on new click to erase past results

  //Checks if the button click was within boundaries of button 1
  if((mouseX > buttonX-buttonW/2 && mouseX < buttonX+buttonW/2)   //Checks the boundaries of the button
      &&                                                          
     (mouseY > buttonY-buttonH/2 && mouseY < buttonY+buttonH/2))
       {  
          userChoice = 'r'; //Sets the user's choice to rock   
       }
  
  //Checks if the button click was within boundaries of button 2
  if((mouseX > buttonX2-buttonW2/2 && mouseX < buttonX2+buttonW2/2)   
      &&                                                          
     (mouseY > buttonY2-buttonH2/2 && mouseY < buttonY2+buttonH2/2))
       { 
        userChoice = 'p';  //Sets the user's choice to paper
       }
       
   //Checks if the button click was within boundaries of button 3 
  if((mouseX > buttonX3-buttonW3/2 && mouseX < buttonX3+buttonW3/2)   
      &&                                                          
     (mouseY > buttonY3-buttonH3/2 && mouseY < buttonY3+buttonH3/2))
       { 
         userChoice = 's';  //Sets the user's choice to scissors
       }
       
  //println("human", userChoice);  Testing output
  
  CompChoice();  //Runs CompChoice method
  Winner();      //Runs Winner method
  
}
  
  
  