module TwentyFiveLivePro
  module Models
    class Space
      include JSON::Serializable

      @[JSON::Field(key: "kind")]
      property kind : String
      @[JSON::Field(key: "id")]
      property id : Int64
      @[JSON::Field(key: "etag")]
      property etag : String
      @[JSON::Field(key: "spaceName")]
      property space_name : String
      @[JSON::Field(key: "spaceFormalName")]
      property space_formal_name : String?
      @[JSON::Field(key: "maxCapacity")]
      property max_capacity : Int64
      @[JSON::Field(key: "updated")]
      property updated : String
      @[JSON::Field(key: "layouts")]
      property layouts : Array(Layout)?
      @[JSON::Field(key: "features")]
      property features : Array(Feature)?
      @[JSON::Field(key: "categories")]
      property categories : Array(Category)?
      @[JSON::Field(key: "attributes")]
      property attributes : Array(Attribute)?
      @[JSON::Field(key: "roles")]
      property roles : Array(Roles)?
    end
  end
end
