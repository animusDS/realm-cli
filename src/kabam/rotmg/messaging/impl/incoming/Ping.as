package kabam.rotmg.messaging.impl.incoming
{
   import flash.utils.ByteArray;
   
   public class Ping extends IncomingMessage
   {
       
      
      public var serial_:int;
      
      public function Ping(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function parseFromInput(data:ByteArray) : void
      {
         this.serial_ = data.readInt();
      }
      
      override public function toString() : String
      {
         return formatToString("PING","serial_");
      }
   }
}
