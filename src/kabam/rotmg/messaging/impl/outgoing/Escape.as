package kabam.rotmg.messaging.impl.outgoing
{
   import flash.utils.ByteArray;
   
   public class Escape extends OutgoingMessage
   {
       
      
      public function Escape(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function writeToOutput(data:ByteArray) : void
      {
      }
      
      override public function toString() : String
      {
         return formatToString("ESCAPE");
      }
   }
}
