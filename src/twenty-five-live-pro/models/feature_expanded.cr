module TwentyFiveLivePro
  module Models
    class FeatureExpanded
      include JSON::Serializable

      @[JSON::Field(key: "featureId")]
      property feature_id : Int64
      @[JSON::Field(key: "featureName")]
      property feature_name : String
    end
  end
end
