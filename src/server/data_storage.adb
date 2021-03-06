with Postgresql;
use Postgresql;


package body Data_Storage is

   procedure Initialize is
   begin
      Postgresql.Connect(test, 5432, localhost, postgres, football);
      if Connected then
         Connected:= True;
      end if;

   end Initialize;


   procedure Shutdown is
   begin
      if Connected then
         Postgresql.Disconnect;
         Connected:=False;
      end if;
   end Shutdown;


   function Timestamp_Count return Count_Type is
   begin
      if Connected then
         Query_String:= "SELECT * FROM test WHERE";
      end if;
   end Timestamp_Count;


   procedure Timestamp_Store(Stamp : in Timestamp) is
   begin
      raise Program_Error with "Data_Storage.Timestamp_Store not implemented";
   end Timestamp_Store;


   function Timestamp_Retrieve(Serial_Number : Serial_Number_Type) return Timestamp_Array is
      Dummy : Timestamp_Array(1 .. 0);
   begin
      return Dummy;
   end Timestamp_Retrieve;


   function Timestamp_Retrieve(Start : Time; Stop : Time) return Timestamp_Array is
      Dummy : Timestamp_Array(1 .. 0);
   begin
      return Dummy;
   end Timestamp_Retrieve;

end Data_Storage;
