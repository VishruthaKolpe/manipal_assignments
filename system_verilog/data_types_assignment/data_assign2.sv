/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign2.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and functions 
***************************************************************************/
// Write a function to return a dynamic array of size 10 filled with random integers.
module data_assign2;

  //Part 1
  //ADD_CODE: Declare a function and input the size 
  //ADD_CODE: Inside the function declare and create the array
  //ADD_CODE: Use the appropriate loop to randomize the elemants of the array
    
  int dy[];
  function dy_array(input int size);
    dy = new[size];
    foreach(dy[i])
      dy[i] = $random;
  endfunction 

  //Part 2a
  //ADD_CODE: The array method to return the maximum value stored in the array
    function dy_array_max();
      int temp;
    for(int i=0;i< dy.size(); i++) begin
      for(int j = i+1;j<dy.size();j++) begin
        if(dy[i]>dy [j]) begin
            temp = dy[i];
            dy[i]=dy[j];
            dy[j] = temp;
         end
       end
    end
    
     $display("Max value of Dynamic array = %0d",dy[dy.size()-1]);
     $display("Second Max value of Dynamic array = %0d",dy[dy.size()-2]);
     $display("The ascending ordered array:");
     foreach(dy[i])
       $dispaly("dy[%0d] =%0d",i,dy[i]);
     endfunction

  //part 2b
  //ADD_CODE: Modify the Part 1 function to arrange the array with out array method
  //ADD_CODE: write a function to arrange the the array in the ascending order
  //HINT : using a loop you can compare the values of the array with previous value
  

  initial 
    begin
      repeat(30)
      //ADD_CODE: call the function
      //ADD_CODE: Display the elements of the dynamic array
      //ADD_CODE: Display the array and the maximum value 
      //ADD_CODE: Display the maximum value of the array and second largest value in the array
     dy_array(10);
      $display("size of an Dynamic array = %0d",dy.size());
      foreach(dy[i])
         $display("dy[%0d]=%0d",i,dy[i]);
         $dispaly("\n");
      dy_array_max();
          $display("\n");
      end
  #10 $finish
    end
endmodule
