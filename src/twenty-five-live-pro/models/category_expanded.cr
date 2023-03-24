module TwentyFiveLivePro
  module Models
    class CategoryExpanded
      include JSON::Serializable

      @[JSON::Field(key: "categoryId")]
      property category_id : Int64
      @[JSON::Field(key: "categoryName")]
      property category_name : String
    end
  end
end
