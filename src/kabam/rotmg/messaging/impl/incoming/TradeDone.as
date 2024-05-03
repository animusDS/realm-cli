package kabam.rotmg.messaging.impl.incoming
{
   import flash.utils.ByteArray;
   
   public class TradeDone extends IncomingMessage
   {
      
      public static const TRADE_SUCCESSFUL:int = 0;
      
      public static const PLAYER_CANCELED:int = 1;
       
      
      public var code_:int;
      
      public var description_:String;
      
      public function TradeDone(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function parseFromInput(data:ByteArray) : void
      {
         this.code_ = data.readInt();
         this.description_ = data.readUTF();
      }
      
      override public function toString() : String
      {
         return formatToString("TRADEDONE","code_","description_");
      }
   }
}
