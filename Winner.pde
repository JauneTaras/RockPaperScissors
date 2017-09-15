void Winner()  //This method determines the result of the Rock Paper Scissors game and displays it
{ 
  
  String Result = " "; //Creating an empty string in which the result of the game will be stored
   
  if (userChoice == compLetter)//If both the computer and the user select the same option
    {
        Result = "draw";      //The game will be a draw
    }
   
  if (userChoice == 'r')      //If the user chooses rock
    {      
       if (compLetter == 'p')   
         {     
           Result = "loss";   //Will lose against paper
         }
       
       if (compLetter == 's')
         {      
           Result = "win";    //Will win against scissors
         }      
    }
  
  if (userChoice == 'p')      //If the user chooses paper
    {        
      if (compLetter == 'r')  
        {
            Result = "win";   //Will win against rock
        }
        
       if (compLetter == 's') 
         {
           Result = "loss";   //Will lose against scissors
         }
    }
    
  if (userChoice == 's')      //If the user chooses scissors
    {
      if (compLetter == 'r')
        {
          Result = "loss";    //Will lose against rock
        }
         
      if (compLetter == 'p')
        {
          Result = "win";     //Will win against scissors
        }
    }
        
  //println(Result); Testing output
  
  text(Result, 350, 300);  //Display the result
    
}
      
  
  
    
    
  
 
  