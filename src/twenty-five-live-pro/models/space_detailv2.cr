module TwentyFiveLivePro
  module Models
    class SpaceDetailv2
      include JSON::Serializable

      class Content
        include JSON::Serializable

        @[JSON::Field(key: "requestId")]
        property request_id : Int64
        @[JSON::Field(key: "updated")]
        property updated : String

        class Data
          include JSON::Serializable

          @[JSON::Field(key: "items")]
          property items : Array(Space)
        end

        @[JSON::Field(key: "data")]
        property data : Data

        class ExpandedInfo
          include JSON::Serializable

          @[JSON::Field(key: "layouts")]
          property layouts : Array(LayoutExpanded)?
          @[JSON::Field(key: "features")]
          property features : Array(FeatureExpanded)?
          @[JSON::Field(key: "categories")]
          property categories : Array(CategoryExpanded)?
          @[JSON::Field(key: "attributes")]
          property attributes : Array(AttributeExpanded)?
          @[JSON::Field(key: "roles")]
          property roles : Array(RoleExpanded)?
          @[JSON::Field(key: "contacts")]
          property contacts : Array(ContactExpanded)?
        end

        @[JSON::Field(key: "expandedInfo")]
        property expanded_info : ExpandedInfo?
      end

      @[JSON::Field(key: "content")]
      property content : Content
    end
  end
end
