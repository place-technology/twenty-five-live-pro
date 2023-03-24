module TwentyFiveLivePro
  module Models
    class PostEvent
      include JSON::Serializable

      @[JSON::Field(key: "id")]
      property id : Int64?
      @[JSON::Field(key: "name")]
      property name : String
      @[JSON::Field(key: "title")]
      property title : String?
      @[JSON::Field(key: "expectedCount")]
      property expected_count : Int64?
      @[JSON::Field(key: "registeredCount")]
      property registered_count : Int64?
      @[JSON::Field(key: "externalId")]
      property external_id : String?
      @[JSON::Field(key: "dates")]
      property dates : Dates

      class Organizations
        include JSON::Serializable

        @[JSON::Field(key: "primary")]
        property primary : Int64
        @[JSON::Field(key: "ancillary")]
        property ancillary : Array(Int64)?
      end

      @[JSON::Field(key: "organizations")]
      property organizations : Organizations

      class Context
        include JSON::Serializable

        @[JSON::Field(key: "state")]
        property state : Int64
        @[JSON::Field(key: "typeId")]
        property type_id : Int64
        @[JSON::Field(key: "parentId")]
        property parent_id : Int64?
      end

      @[JSON::Field(key: "context")]
      property context : Context
      @[JSON::Field(key: "categories")]
      property categories : Array(Int64)?
      @[JSON::Field(key: "attributes")]
      property attributes : Array(Attribute)?
      @[JSON::Field(key: "requirements")]
      property requirements : Array(Requirements)?
      @[JSON::Field(key: "roles")]
      property roles : Array(Roles)?
      @[JSON::Field(key: "text")]
      property text : Text?
      @[JSON::Field(key: "profiles")]
      property profiles : Array(Profile)
    end
  end
end
