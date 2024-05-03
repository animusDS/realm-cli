package kabam.rotmg.messaging.impl.outgoing
{
   import flash.utils.ByteArray;
   
   public class CancelTrade extends OutgoingMessage
   {
      public function CancelTrade(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function writeToOutput(data:ByteArray) : void
      {
      }
      
      override public function toString() : String
      {
         return formatToString("CANCELTRADE");
      }
   }
}
