package kabam.rotmg.messaging.impl.outgoing
{
   import flash.utils.ByteArray;
   
   public class Create extends OutgoingMessage
   {
       
      
      public var classType:int;
      
      public var skinType:int;
      
      public function Create(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function writeToOutput(data:ByteArray) : void
      {
         data.writeShort(this.classType);
         data.writeShort(this.skinType);
      }
      
      override public function toString() : String
      {
         return formatToString("CREATE","classType");
      }
   }
}
