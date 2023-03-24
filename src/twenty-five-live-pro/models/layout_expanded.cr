module TwentyFiveLivePro
  module Models
    class LayoutExpanded
      include JSON::Serializable

      @[JSON::Field(key: "layoutId")]
      property layout_id : Int64
      @[JSON::Field(key: "layoutName")]
      property layout_name : String
    end
  end
end
