module TwentyFiveLivePro
  module Models
    class OrganizationDetailv2
      include JSON::Serializable

      class Content
        include JSON::Serializable

        @[JSON::Field(key: "requestId")]
        property request_id : Int64
        @[JSON::Field(key: "updated")]
        property updated : String

        class Data
          include JSON::Serializable

          class Organization
            include JSON::Serializable

            @[JSON::Field(key: "kind")]
            property kind : String

            @[JSON::Field(key: "id")]
            property id : Int64

            @[JSON::Field(key: "etag")]
            property etag : String

            @[JSON::Field(key: "organizationName")]
            property organization_name : String

            @[JSON::Field(key: "organizationTitle")]
            property organization_title : String

            @[JSON::Field(key: "updated")]
            property updated : String

            @[JSON::Field(key: "organizationTypeId")]
            property organization_type_id : Int64
          end

          @[JSON::Field(key: "items")]
          property items : Array(Organization)
        end

        @[JSON::Field(key: "data")]
        property data : Data

        class ExpandedInfo
          include JSON::Serializable

          @[JSON::Field(key: "organizationTypes")]
          property organization_types : Array(OrganizationTypeExpanded)?
          @[JSON::Field(key: "organizationCategories")]
          property organization_categories : Array(CategoryExpanded)?
        end

        @[JSON::Field(key: "expandedInfo")]
        property expanded_info : Array(ExpandedInfo)?
      end

      @[JSON::Field(key: "content")]
      property content : Content?
    end
  end
end
