module TwentyFiveLivePro
  module Models
    class ResourceDetailv2
      include JSON::Serializable

      class Content
        include JSON::Serializable

        @[JSON::Field(key: "requestId")]
        property request_id : Int64
        @[JSON::Field(key: "updated")]
        property updated : String

        class Data
          include JSON::Serializable

          class Resource
            include JSON::Serializable

            class Category
            end

            @[JSON::Field(key: "kind")]
            property kind : String

            @[JSON::Field(key: "id")]
            property id : Int64

            @[JSON::Field(key: "etag")]
            property etag : String

            @[JSON::Field(key: "resourceName")]
            property resource_name : String

            @[JSON::Field(key: "updated")]
            property updated : String
          end

          @[JSON::Field(key: "items")]
          property items : Array(Resource)
        end

        @[JSON::Field(key: "data")]
        property data : Data

        class ExpandedInfo
          include JSON::Serializable

          @[JSON::Field(key: "categories")]
          property categories : Array(CategoryExpanded)?
          @[JSON::Field(key: "attributes")]
          property attributes : Array(AttributeExpanded)?
        end

        @[JSON::Field(key: "expandedInfo")]
        property expanded_info : Array(ExpandedInfo)?
      end

      @[JSON::Field(key: "content")]
      property content : Content?
    end
  end
end
