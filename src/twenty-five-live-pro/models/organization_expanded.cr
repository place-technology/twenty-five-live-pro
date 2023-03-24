module TwentyFiveLivePro
  module Models
    class OrganizationExpanded
      include JSON::Serializable

      @[JSON::Field(key: "organizationId")]
      property organization_id : Int64
      @[JSON::Field(key: "etag")]
      property etag : String
      @[JSON::Field(key: "organizationName")]
      property organization_name : String
    end
  end
end
