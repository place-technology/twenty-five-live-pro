module TwentyFiveLivePro
  module Models
    class SpaceAvailabilityResponse
      include JSON::Serializable

      class Content
        include JSON::Serializable

        @[JSON::Field(key: "requestId")]
        property request_id : String
        @[JSON::Field(key: "updated")]
        property updated : String

        class Data
          include JSON::Serializable

          class Space
            include JSON::Serializable

            @[JSON::Field(key: "spaceId")]
            property space_id : Int64

            @[JSON::Field(key: "dates")]
            property dates : Array(Hash(String, JSON::Any))

            @[JSON::Field(key: "available")]
            property available : Bool

            @[JSON::Field(key: "conflictType")]
            property conflict_type : String?
          end

          @[JSON::Field(key: "spaces")]
          property spaces : Array(Space)
        end

        @[JSON::Field(key: "data")]
        property data : Data

        class ExpandedInfo
          include JSON::Serializable

          @[JSON::Field(key: "conflictTypes")]
          property layouts : Array(ConflictExpanded)?
        end

        @[JSON::Field(key: "expandedInfo")]
        property expanded_info : ExpandedInfo?
      end

      @[JSON::Field(key: "content")]
      property content : Content
    end
  end
end
