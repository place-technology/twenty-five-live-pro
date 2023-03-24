module TwentyFiveLivePro
  module Models
    class ResourceExpanded
      include JSON::Serializable

      @[JSON::Field(key: "resourceId")]
      property resource_id : Int64
      @[JSON::Field(key: "etag")]
      property etag : String
      @[JSON::Field(key: "resourceName")]
      property resource_name : String
    end
  end
end
