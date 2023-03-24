module TwentyFiveLivePro
  module Models
    class Reservation
      include JSON::Serializable

      @[JSON::Field(key: "rsrvId")]
      property rsrv_id : Int64?
      @[JSON::Field(key: "state")]
      property state : Int64
      @[JSON::Field(key: "occurrence")]
      property occurrence : String?
      @[JSON::Field(key: "rsrvStartDt")]
      property rsrv_start_dt : String
      @[JSON::Field(key: "evStartDt")]
      property ev_start_dt : String
      @[JSON::Field(key: "evEndDt")]
      property ev_end_dt : String
      @[JSON::Field(key: "rsrvEndDt")]
      property rsrv_end_dt : String
      @[JSON::Field(key: "spaces")]
      property spaces : Array(SpaceReservation)?
      @[JSON::Field(key: "resources")]
      property resources : Array(ResourceReservation)?
    end
  end
end
