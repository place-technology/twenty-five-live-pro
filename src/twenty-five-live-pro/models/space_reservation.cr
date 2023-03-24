module TwentyFiveLivePro
  module Models
    class SpaceReservation
      include JSON::Serializable

      class Reserved
        include JSON::Serializable

        @[JSON::Field(key: "spaceId")]
        property space_id : Int64?
        @[JSON::Field(key: "layoutId")]
        property layout_id : Int64?
        @[JSON::Field(key: "share")]
        property share : Bool?
        @[JSON::Field(key: "attendance")]
        property attendance : Int64?
        @[JSON::Field(key: "instructions")]
        property instructions : String?
        @[JSON::Field(key: "rating")]
        property rating : Int64?
      end

      @[JSON::Field(key: "reserved")]
      property reserved : Reserved?

      class Requested
        include JSON::Serializable

        @[JSON::Field(key: "spaceId")]
        property space_id : Int64?
        @[JSON::Field(key: "status")]
        property status : Int64?
      end

      @[JSON::Field(key: "requested")]
      property requested : Requested?
    end
  end
end
