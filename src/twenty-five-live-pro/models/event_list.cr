module TwentyFiveLivePro
  module Models
    class EventList
      include JSON::Serializable

      @[JSON::Field(key: "kind")]
      property kind : String
      @[JSON::Field(key: "id")]
      property id : Int64
      @[JSON::Field(key: "etag")]
      property etag : String
      @[JSON::Field(key: "eventName")]
      property event_name : String
      @[JSON::Field(key: "eventLocator")]
      property event_locator : String
      @[JSON::Field(key: "updated")]
      property updated : String
      @[JSON::Field(key: "dates")]
      property dates : Dates?
    end
  end
end
