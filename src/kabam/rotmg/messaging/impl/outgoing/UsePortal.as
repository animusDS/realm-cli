package kabam.rotmg.messaging.impl.outgoing
{
   import flash.utils.ByteArray;
   
   public class UsePortal extends OutgoingMessage
   {
       
      
      public var objectId_:int;
      
      public function UsePortal(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function writeToOutput(data:ByteArray) : void
      {
         data.writeInt(this.objectId_);
      }
      
      override public function toString() : String
      {
         return formatToString("USEPORTAL","objectId_");
      }
   }
}
