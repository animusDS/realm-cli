package kabam.rotmg.messaging.impl.incoming
{
   import flash.utils.ByteArray;
   
   public class TradeRequested extends IncomingMessage
   {
       
      
      public var name_:String;
      
      public function TradeRequested(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function parseFromInput(data:ByteArray) : void
      {
         this.name_ = data.readUTF();
      }
      
      override public function toString() : String
      {
         return formatToString("TRADEREQUESTED","name_");
      }
   }
}
