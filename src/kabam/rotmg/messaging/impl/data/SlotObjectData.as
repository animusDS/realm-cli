package kabam.rotmg.messaging.impl.data
{
   import flash.utils.ByteArray;
   import flash.utils.ByteArray;
   
   public class SlotObjectData
   {
       
      
      public var objectId_:int;
      
      public var slotId_:int;
      
      public var objectType_:int;
      
      public function SlotObjectData()
      {
         super();
      }
      
      public function parseFromInput(data:ByteArray) : void
      {
         this.objectId_ = data.readInt();
         this.slotId_ = data.readUnsignedByte();
         this.objectType_ = data.readShort();
      }
      
      public function writeToOutput(data:ByteArray) : void
      {
         data.writeInt(this.objectId_);
         data.writeByte(this.slotId_);
         data.writeShort(this.objectType_);
      }
      
      public function toString() : String
      {
         return "objectId_: " + this.objectId_ + " slotId_: " + this.slotId_ + " objectType_: " + this.objectType_;
      }
   }
}
