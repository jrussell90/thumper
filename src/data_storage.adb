with Postgresql;
use Postgresql;
with Ada.Text_IO;
use Ada.Text_IO;


package body Data_Storage is

   procedure Initialize is
   begin
      Postgresql.Connect("test", 5432, "localhost", "postgres", "football99");
      Put_Line("Connected to the Database.");
   end Initialize;


   procedure Shutdown is
   begin
      Postgresql.Disconnect;
      Put_Line("Disconnected From the Database");
   end Shutdown;


   function Timestamp_Count return Count_Type is
   Type Count is new Count_Type range 1..Count_Type'Last;
   begin
      Count := PostgreSQL.Execute_Query("SELECT COUNT(ts) FROM test");
      return Count;
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
