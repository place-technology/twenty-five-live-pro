module TwentyFiveLivePro
  module Models
    class EventTypeExpanded
      include JSON::Serializable

      @[JSON::Field(key: "typeId")]
      property type_id : Int64
      @[JSON::Field(key: "typeName")]
      property type_name : String
    end
  end
end
