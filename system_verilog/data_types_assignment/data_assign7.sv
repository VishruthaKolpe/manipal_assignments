/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign7.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and queue data type 
***************************************************************************/
module data_assign7;
  //ADD_CODE: Declare a queue with unbounded value off type bit[7:0]
   bit [7:0] q[$];

  //ADD_CODE: Write a function to assign 15 random values to the queue
  function random();
    begin
     for(int i = 0;i < 15;i++)
       q[i] = $random();
    end
  endfunction

  //ADD_CODE: Display all the elements of the queue and size of the queue
  function display();
   begin
    $display("The size of the queue = %0d", q.size());
    foreach(q[i])
      $display(" q[%0d] = %d",i.q[i]);
    end
  endfunction

  //ADD_CODE: Write a function to reverse the elements of the queue without queue method
  function revere();
     begin
      bit [7:0] temp;
      for (int i = 0; i < q.size()/2; i++)
       begin
        temp = q[i];
        q[i] = q[q.size()-1-i];
        q[q.size() - 1 - i] = temp;
       end
    end
 endfunction
  
  initial 
    begin
      //ADD_CODE:ADD a queue method to reverse the elements of the code
      //ADD_CODE: HINT Add loops
      //ADD_CODE: Display the reversed queue elements and size
     
      random();
      $display("The original queue :");
      display();

      //ADD_CODE: Call the function to display the reverse elements of the above queue
      //ADD_CODE: Display the elements. The queue elements matches with original value
     
      reverse();
      $display("Reversed Queue :");
      display();
      q.reverse();
      display();
    end
endmodule
