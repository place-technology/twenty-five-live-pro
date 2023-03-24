module TwentyFiveLivePro
  module Models
    class EventContext
      include JSON::Serializable

      @[JSON::Field(key: "state")]
      property state : Int64
      @[JSON::Field(key: "typeId")]
      property type_id : Int64?
      @[JSON::Field(key: "loadDraftResources")]
      property load_draft_resources : Bool?
      @[JSON::Field(key: "loadDraftSpaces")]
      property load_draft_spaces : Bool?
      @[JSON::Field(key: "parentId")]
      property parent_id : Int64?
    end
  end
end
