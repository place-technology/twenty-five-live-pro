module TwentyFiveLivePro
  module Models
    class Dates
      include JSON::Serializable

      @[JSON::Field(key: "startDate")]
      property start_date : String

      @[JSON::Field(key: "endDate")]
      property end_date : String
    end
  end
end
