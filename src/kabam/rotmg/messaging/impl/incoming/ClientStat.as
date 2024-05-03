package kabam.rotmg.messaging.impl.incoming
{
   import flash.utils.ByteArray;
   
   public class ClientStat extends IncomingMessage
   {
       
      
      public var name_:String;
      
      public var value_:int;
      
      public function ClientStat(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function parseFromInput(data:ByteArray) : void
      {
         this.name_ = data.readUTF();
         this.value_ = data.readInt();
      }
      
      override public function toString() : String
      {
         return formatToString("CLIENTSTAT","name_","value_");
      }
   }
}
