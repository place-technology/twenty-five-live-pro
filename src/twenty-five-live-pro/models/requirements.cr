module TwentyFiveLivePro
  module Models
    class Requirements
      include JSON::Serializable

      @[JSON::Field(key: "requirementId")]
      property requirement_id : Int64
      @[JSON::Field(key: "quantity")]
      property quantity : Int64
      @[JSON::Field(key: "comments")]
      property comments : String?
    end
  end
end
