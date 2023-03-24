module TwentyFiveLivePro
  module Models
    class Profile
      include JSON::Serializable

      @[JSON::Field(key: "name")]
      property name : String?
      @[JSON::Field(key: "expectedCount")]
      property expected_count : Int64?
      @[JSON::Field(key: "registeredCount")]
      property registered_count : Int64?
      @[JSON::Field(key: "occurrenceDefn")]
      property occurrence_defn : OccurrenceDefinition
      @[JSON::Field(key: "reservations")]
      property reservations : Array(Reservation)
    end
  end
end
