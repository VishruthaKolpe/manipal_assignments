/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign1.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and queue data type 
***************************************************************************/
module data_assign1 (); // module name and file name same 
  
// Declared an associative array packet of type int and index type string
int  packet[string];
  
//Declared a unbounded queue of type int 
int q_int[$];
        
//Assigned values to the queue elements 
q_int = {500,1000,500,200,400,500,600,700,900,200,0};

initial 
  begin
    // Assigned values to the array elements
    packet["usb"] = 32;
    packet["sata"] = 4;
    packet["ethernet"] = 31;
    packet["PCIE"] = 2; 
    packet["PCI"] = 4;
    packet["AXI3"]=31; 
          
    // Display the size and values of all the array elements
       $display("the size of arry is %0d",packet.size());
       foreach(packet[i])
         $display("packet[%0s] = %0d",i,packet[i]);
       $display("\n");
 
    // Add the array functions or methods to find the repeated values:
    // Delete the duplicate elements from the array
    // Display the size and value of the modified  array size in an empty function
    // Expected output is size is 4
    // packet  = `{32,4,31,2};
    
       foreach(packet[i])
        begin
          foreach(packet[j])
           begin
             if(i! = j && packet[i] == packet [j])
                 packet.delete(j);
             end
            end
         $display("The size of modified array is %0d",packet.size());
         foreach(packet[i])
           $display("packet[%0s] = %0d",i,packet[i]);
          $display("\n");


    //Assigned values to the queue elements 
    q_int = {500,1000,500,200,400,500,600,700,900,200,0};        
     $display("The size of array is %0d",q_int.size());


    //Display the size and values of all the queue elements 
     foreach(q_int[i])
       $display("q_int[%0d] = %0d",i,q_int[i]);
     $display("\n");

    //Assign 10 multiple of 100s values to the existing queue.
     for(int i = 1 ; i<=10 ; i++)
       begin
         q_int.push_back(i*100);
       end
    
      foreach(q_int[i])
        $display("q_int[%0d] = %0d",i,q_int[i]);
      $display("\n");


    //Add the queue functions or methods to find the repeated values:
    //Delete the duplicate elements from the queue
    //Display the size and value of the modified queue in an empty function
    //Expected output is size is 8
    // q_int = `{500,1000,200,400,600,700,900,0}
      
      foreach(q_int[i])
        begin
         foreach(q-int[j])
          begin
           if(i! = j && q_int[i] == q_int[j])
             q_int.delete(j);
           end
         end
       $display("The size of modified array is %0d",q_int.size());
       foreach(q_int[i])
         $display("q_int[%0d] = %0d", i, q_int[i]);
          $display("\n");

    //finish
    #10 $finish;
  end
endmodule
