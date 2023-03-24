module TwentyFiveLivePro
  module Models
    class Category
      include JSON::Serializable

      @[JSON::Field(key: "categoryId")]
      property category_id : Int64
      @[JSON::Field(key: "inheritCode")]
      property inherit_code : Int64?
    end
  end
end
