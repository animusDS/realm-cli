package kabam.rotmg.messaging.impl.outgoing
{
   import flash.utils.ByteArray;
   
   public class ShootAck extends OutgoingMessage
   {
       
      
      public var time_:int;
      
      public function ShootAck(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function writeToOutput(data:ByteArray) : void
      {
         data.writeInt(this.time_);
      }
      
      override public function toString() : String
      {
         return formatToString("SHOOTACK","time_");
      }
   }
}
