module TwentyFiveLivePro
  module Models
    class PutEvent
      include JSON::Serializable

      @[JSON::Field(key: "eventId")]
      property event_id : Int64
      @[JSON::Field(key: "name")]
      property name : String
      @[JSON::Field(key: "title")]
      property title : String
      @[JSON::Field(key: "state")]
      property state : Int64
      @[JSON::Field(key: "endDt")]
      property end_dt : String
      @[JSON::Field(key: "startDt")]
      property start_dt : String
      @[JSON::Field(key: "profile")]
      property profile : Array(Profile)
      @[JSON::Field(key: "eventDescription")]
      property event_description : String?
      @[JSON::Field(key: "organizations")]
      property organizations : Array(Organization)?
      @[JSON::Field(key: "version")]
      property version : Int64
    end
  end
end
