package kabam.rotmg.messaging.impl.incoming
{
   import flash.utils.ByteArray;
   import kabam.lib.net.impl.Message;
   
   public class IncomingMessage extends Message
   {
       
      
      public function IncomingMessage(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public final function writeToOutput(data:ByteArray) : void
      {
         throw new Error("Client should not send " + id + " messages");
      }
   }
}
