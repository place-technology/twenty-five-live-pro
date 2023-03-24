module TwentyFiveLivePro
  module Models
    class SpaceAvailabilityRequest
      include JSON::Serializable

      @[JSON::Field(key: "spaces")]
      property spaces : Array(SpaceAvailabilityChunk)
    end
  end
end
