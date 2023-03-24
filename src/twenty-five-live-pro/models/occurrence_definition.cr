module TwentyFiveLivePro
  module Models
    class OccurrenceDefinition
      include JSON::Serializable

      @[JSON::Field(key: "recTypeId")]
      property rec_type_id : Int64
      @[JSON::Field(key: "profileCode")]
      property profile_code : String?
      @[JSON::Field(key: "adHocDates")]
      property ad_hoc_dates : Array(String)?
      @[JSON::Field(key: "initStartDt")]
      property init_start_dt : String
      @[JSON::Field(key: "initEndDt")]
      property init_end_dt : String

      class AddedTime
        include JSON::Serializable

        @[JSON::Field(key: "preEvent")]
        property pre_event : String?
        @[JSON::Field(key: "postEvent")]
        property post_event : String?
        @[JSON::Field(key: "setupTime")]
        property setup_time : String?
        @[JSON::Field(key: "takedownTime")]
        property takedown_time : String?
      end

      @[JSON::Field(key: "addedTime")]
      property added_time : AddedTime?
    end
  end
end
