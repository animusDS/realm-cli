package kabam.rotmg.messaging.impl.outgoing
{
   import flash.utils.ByteArray;
   
   public class CheckCredits extends OutgoingMessage
   {
       
      
      public function CheckCredits(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function writeToOutput(data:ByteArray) : void
      {
      }
      
      override public function toString() : String
      {
         return formatToString("CHECKCREDITS");
      }
   }
}
