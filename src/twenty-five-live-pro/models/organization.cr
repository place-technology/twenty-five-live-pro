module TwentyFiveLivePro
  module Models
    class Organization
      include JSON::Serializable

      @[JSON::Field(key: "kind")]
      property kind : String
      @[JSON::Field(key: "id")]
      property id : Int64
      @[JSON::Field(key: "etag")]
      property etag : String
      @[JSON::Field(key: "updated")]
      property updated : String
      @[JSON::Field(key: "organizationName")]
      property organization_name : String
      @[JSON::Field(key: "organizationFormalName")]
      property organization_formal_name : String?
      @[JSON::Field(key: "organizationType")]
      property organization_type : Int64
      @[JSON::Field(key: "organizationCategories")]
      property organization_categories : Array(Category)?
    end
  end
end
