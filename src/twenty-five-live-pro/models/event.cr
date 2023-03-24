module TwentyFiveLivePro
  module Models
    class Event
      include JSON::Serializable

      @[JSON::Field(key: "kind")]
      property kind : String
      @[JSON::Field(key: "id")]
      property id : Int64
      @[JSON::Field(key: "etag")]
      property etag : String
      @[JSON::Field(key: "alienUid")]
      property alien_uid : String?
      @[JSON::Field(key: "eventName")]
      property event_name : String
      @[JSON::Field(key: "eventLocator")]
      property event_locator : String
      @[JSON::Field(key: "priority")]
      property priority : Int64?
      @[JSON::Field(key: "createDt")]
      property create_dt : String
      @[JSON::Field(key: "updated")]
      property updated : String
      @[JSON::Field(key: "dates")]
      property dates : Dates
      @[JSON::Field(key: "organizations")]
      property organizations : Array(Organization)?

      class Context
        include JSON::Serializable

        @[JSON::Field(key: "state")]
        property state : Int64?
        @[JSON::Field(key: "typeId")]
        property type_id : Int64?
        @[JSON::Field(key: "parentId")]
        property parent_id : Int64?
      end

      @[JSON::Field(key: "context")]
      property context : Context?
      @[JSON::Field(key: "categories")]
      property categories : Array(Category)?
      @[JSON::Field(key: "attributes")]
      property attributes : Array(Attribute)?
      @[JSON::Field(key: "requirements")]
      property requirements : Array(Requirements)?
      @[JSON::Field(key: "roles")]
      property roles : Array(Roles)?
      @[JSON::Field(key: "text")]
      property text : Array(Text)?
      @[JSON::Field(key: "profiles")]
      property profiles : Array(Profile)?
    end
  end
end
