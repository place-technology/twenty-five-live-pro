module TwentyFiveLivePro
  module Models
    class Text
      include JSON::Serializable

      @[JSON::Field(key: "description")]
      property description : String?
      @[JSON::Field(key: "note")]
      property note : String?
      @[JSON::Field(key: "confirmation")]
      property confirmation : String?
      @[JSON::Field(key: "html")]
      property html : String?
      @[JSON::Field(key: "awform")]
      property awform : String?
      @[JSON::Field(key: "pannier")]
      property pannier : String?
      @[JSON::Field(key: "invoice")]
      property invoice : String?
      @[JSON::Field(key: "locationResourceRequestinfo")]
      property location_resource_requestinfo : String?
    end
  end
end
