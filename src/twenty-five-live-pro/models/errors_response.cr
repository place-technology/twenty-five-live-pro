module TwentyFiveLivePro
  module Models
    class ErrorsResponse
      include JSON::Serializable

      @[JSON::Field(key: "errorNum")]
      property error_num : String
      @[JSON::Field(key: "objectType")]
      property object_type : Int64?
      @[JSON::Field(key: "objectId")]
      property object_id : Int64?
      @[JSON::Field(key: "objectName")]
      property object_name : String?
      @[JSON::Field(key: "reason")]
      property reason : String
      @[JSON::Field(key: "message")]
      property message : String
    end
  end
end
