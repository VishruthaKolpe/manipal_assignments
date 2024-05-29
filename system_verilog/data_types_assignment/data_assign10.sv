/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign10.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of splitting of dynamic array using inbuilt methods
***************************************************************************/
module data_assign10 (); 

  // Example: Split the dyn_arr_b[0]=ffffffff  to 
  // dyn_arr_a[0]=ff, dyn_arr_a[1]=ff , dyn_arr_a[2]=ff, dyn_arr_a[3]=ff.
  
  //Declare a packed array of size 32 bit named dyn_arr_b
      logic [31:0] dyn_arr_b ;     

  //Declare a multidimensional array dyn_arr_a as specified in the example 
     logic  [7:0] dyn_arr_a [3:0];

  initial 
    begin
      //create and randomize the dyn_arr_b ;
        dyn_array_b = 32'hffffffff;

      //create and assign size for the dyn_arr_a           
      //Write the logic (loops) to split the dyn_arr_b and assign the values to dyn_arr_a
               
               dyn_arr_a[3] = dyn_arr_b[31:24];
               dyn_arr_a[2] = dyn_arr_b[23:16];
               dyn_arr_a[1] = dyn_arr_b[15:8];
               dyn_arr_a[0] = dyn_arr_b[7:0];

 
     //Display both the arrays 
         $display("dyn_arr_b = %h",dyn_arr_b);
         $dispaly("dyn_arr_a[0] = %h",dyn_arr_a[0]);
         $display("dyn_arr_a[1] = %h",dyn_arr_a[1]);
         $dispaly("dyn_arr_a[2] = %h",dyn_arr_a[2]);
         $dispaly("dyn_arr_a[3] = %h",dyn_arr_a[3]);
    
  end
endmodule
