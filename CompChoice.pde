void CompChoice()  //This method generates the computer output
{ 
  
  text("You have picked:", 350, 150);  //For clarity
  text(userChoice, 350, 170);          //Displays the user's output
  
  int comp = (int)random(1,4);        //Generates a random number between 1 and 3
 
  if (comp == 1)  //If the random number is 1
    {
      compLetter = 'r';  //Selects rock
    }
     
  if(comp == 2)  //If the random number is 2
    {    
       compLetter = 'p';  //Selects paper
    }
    
  if(comp == 3)  //If the random number is 3
    {
      compLetter = 's';  //Selects scissors
    }
         
  //println("computer", compLetter); Testing output
  
  text("The computer has picked:", 350, 200);  //For clarity
  text(compLetter, 350, 220);  //Displays the computer's output
  
}