module TwentyFiveLivePro
  module Models
    class ConflictExpanded
      include JSON::Serializable

      @[JSON::Field(key: "conflictTypeId")]
      property conflict_type_id : Int64
      @[JSON::Field(key: "conflictTypeName")]
      property conflict_type_name : String
      @[JSON::Field(key: "conflictTypeDescription")]
      property conflict_type_description : String
    end
  end
end
