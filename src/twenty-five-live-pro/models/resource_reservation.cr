module TwentyFiveLivePro
  module Models
    class ResourceReservation
      include JSON::Serializable

      class Reserved
        include JSON::Serializable

        @[JSON::Field(key: "resourceId")]
        property resource_id : Int64?
        @[JSON::Field(key: "quantity")]
        property quantity : Int64?
        @[JSON::Field(key: "instructions")]
        property instructions : String?
        @[JSON::Field(key: "comments")]
        property comments : String?
      end

      @[JSON::Field(key: "reserved")]
      property reserved : Reserved?

      class Requested
        include JSON::Serializable

        @[JSON::Field(key: "resourceId")]
        property resource_id : Int64?
        @[JSON::Field(key: "quantity")]
        property quantity : Int64?
        @[JSON::Field(key: "state")]
        property state : Int64?
      end

      @[JSON::Field(key: "requested")]
      property requested : Requested?
    end
  end
end
