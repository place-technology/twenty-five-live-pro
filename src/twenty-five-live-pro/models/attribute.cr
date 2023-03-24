module TwentyFiveLivePro
  module Models
    class Attribute
      include JSON::Serializable

      @[JSON::Field(key: "attributeId")]
      property attribute_id : Int64
    end
  end
end
