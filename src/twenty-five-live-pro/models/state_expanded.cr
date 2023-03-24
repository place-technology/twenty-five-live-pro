module TwentyFiveLivePro
  module Models
    class StateExpanded
      include JSON::Serializable

      @[JSON::Field(key: "state")]
      property state : Int64
      @[JSON::Field(key: "stateName")]
      property state_name : String
    end
  end
end
