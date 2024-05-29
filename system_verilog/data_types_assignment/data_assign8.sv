
/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign8.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and dynamic array differences
***************************************************************************/
module data_assign8 (); // module name and file name same
  
  //ADD_CODE: Declare a dynamic array of dyn_arr
     int dyn_arr[];

  //ADD_CODE: Declare the the size of an array
     int size = 100;
    // dyn_arr = new[size];

  //ADD_CODE: write a function to assign even values to the first 50 elements of the array
   function void assign_even_values(int arr[]);
   int i;
    for( i = 0; i<50 ;i++) begin
       arr[i] = i* 2;
    end
   endfunction

  //ADD_CODE: Display the value of the array 
   initial begin
    $display(" Dynamic array after assigning even values");
    for ( int i = 0; i < 50 ; i++) begin
      $display("dyn_arr[%0d] = %0d ",i ,dyn_arr[i]);
    end
   end

  //ADD_CODE: Now write another function to add odd values to the last 50 elements
  function void assign_odd_values(int arr[]);
  int i;
    for( int i = 50; i <100 ; i++) begin
       arr[i] = (i - 50) * 2 + 1 ;
    end
  endfunction
  
  //ADD_CODE: Display all the 100 elements of the array
 initial begin 
  for(int i = 0; i<100 ; i++) begin
    $display("dyn_arr[%0d] = %0d ", i, dyn_arr[i]);
  end
end
  //ADD_CODE: Write a method to delete the 90th element of the array
  function void delete_element(int arr[], int index);
   int i;
   for(i = index ; i < $size(arr) - 1; i ++) begin
     arr[i] = arr [i+1];
   end
     arr = arr[0:$size(arr) -2];
  endfunction

  //ADD_CODE: Write a method to delete the compelte array
   function void delete_array(ref int arr[]);
      arr.delete();
   endfunction
//--------------------------------
  //Please repeat the same code with associative array with name assoc_arr and compare your findings


 // Declare associative array
  int assoc_arr[string];
 
// Function to assign even values to first 50 elements
 function void assign_even_values_assoc(int arr[string]);
  int i;
  for(i =0; i < 50; i++) begin
    arr[$sformatf("%0d",i)] = i * 2;
  end
 endfunction

// Function to assign odd values 
 function void assign_odd_values_assoc(int arr[string]);
  int i;
  for(i = 50; i< 100; i++) begin
    arr[$sformatf(%0d",i)] = (i -50) * 2 + 1;
  end
 endfunction 

// Function to delete 90th element from associated array
 function void delete_element_assoc(int arr[string], string index);
  arr.delete(index();
 endfunction

// Function to delete entire array
function void delete_array_assoc(int arr[string]);
  arr.delete();
endfunction

initial
  begin

   dyn_arr = new[size];
   assign_even_values(dyn_arr);
   assign_odd_values(dyn _arr);

 // display first 50 elements of associated array
 foreach(assoc_arr[key])
   $display("assoc_arr[%s] = %0d",key , assoc_arr[key]);
#10 $finish;
end
endmodule























 
