module TwentyFiveLivePro
  module Models
    class AttributeResponse
      include JSON::Serializable

      @[JSON::Field(key: "attributeId")]
      property attribute_id : Int64
      @[JSON::Field(key: "value")]
      property value : String
    end
  end
end
