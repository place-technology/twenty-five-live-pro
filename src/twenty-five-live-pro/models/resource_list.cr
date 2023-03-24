module TwentyFiveLivePro
  module Models
    class ResourceList
      include JSON::Serializable

      @[JSON::Field(key: "kind")]
      property kind : String
      @[JSON::Field(key: "id")]
      property id : Int64
      @[JSON::Field(key: "etag")]
      property etag : String
      @[JSON::Field(key: "resourceName")]
      property resource_name : String
      @[JSON::Field(key: "canRequest")]
      property can_request : Bool
    end
  end
end
