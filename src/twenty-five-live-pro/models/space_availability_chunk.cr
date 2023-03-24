module TwentyFiveLivePro
  module Models
    class SpaceAvailabilityChunk
      include JSON::Serializable

      @[JSON::Field(key: "spaceId")]
      property space_id : Int64
      @[JSON::Field(key: "dates")]
      property dates : Dates
    end
  end
end
