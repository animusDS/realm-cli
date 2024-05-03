package kabam.rotmg.messaging.impl.incoming
{
   import flash.utils.ByteArray;
   
   public class FamePriceMultiplier extends IncomingMessage
   {
       
      
      public var multiplier:Number;
      
      public function FamePriceMultiplier(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function parseFromInput(data:ByteArray) : void
      {
         this.multiplier = data.readFloat();
      }
      
      override public function toString() : String
      {
         return formatToString("FAME_PRICE_MULTIPLIER","multiplier");
      }
   }
}
