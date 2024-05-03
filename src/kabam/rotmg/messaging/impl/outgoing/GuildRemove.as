package kabam.rotmg.messaging.impl.outgoing
{
   import flash.utils.ByteArray;
   
   public class GuildRemove extends OutgoingMessage
   {
       
      
      public var name_:String;
      
      public function GuildRemove(id:uint, callback:Function)
      {
         super(id,callback);
      }
      
      override public function writeToOutput(data:ByteArray) : void
      {
         data.writeUTF(this.name_);
      }
      
      override public function toString() : String
      {
         return formatToString("GUILDREMOVE","name_");
      }
   }
}
