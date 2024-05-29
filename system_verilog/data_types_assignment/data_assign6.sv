/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign1.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of array methods  
***************************************************************************/
module data_assign6;
  bit [7:0] array [int];
  int index;  
  initial 
    begin    
      array[5] = 2;
      array[10] = 4;
      array[7] = 6;
      array[9] = 8;
      array[20] = 10;
      array[13] = 12;
      foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
      /* array[5] = 2
         array[7] = 6
         array[9] = 8
         array[10] = 4
         array[13] = 12
         array[20] = 10
      */

      $display("size = %0d, Number of entries = %0d of array", array.size(), array.num());
      // size = 6, Number of entries = 6 of array
      $display("--------------------------");
     // -----------------------------------------------
      if(array.exists(7)) 
        $display("An element exist at index = 7");// An element exist at index
      else 
        $display("An element doesn't exist at index = 7");// This statement will not be displayed

      if(array.exists(8)) 
        $display("An element exist at index = 8"); // will not be displayed
      else 
        $display("An element doesn't exist at index = 8"); // An element doesn't exist at index = 8

      $display("--------------------------");
     //  -----------------------------------------------------

      array.first(index);
      $display("First index of array = %0d", index); // First index of array = 5 
      array.last(index);
      $display("Last index of array = %0d", index); // Last index of array = 20
      index = 9;
      array.prev(index);  
      $display("Prev index of 9 is %0d", index); // Prev index of 9 is 7
      index = 10;
      array.next(index); 
      $display("Next index of 10 is %0d", index); // Next index of 10 is 13 

      $display("--------------------------");
   // ---------------------------------------------
      array.delete(7);
      $display("After deleting element having index 7"); // After deleting element having index 7 
      foreach (array[i]) $display("array[%0d] = %0d", i, array[i]); 
      /* array[5] = 2
         array[9] = 8
         array[10] = 4
         array[13] = 12
         array[20] = 10
      */
      $display("--------------------------");
   // --------------------------------------------
      array.delete();
      $display("size = %0d of array", array.size());// size = 0 of array
    end
endmodule
