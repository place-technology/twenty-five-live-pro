module TwentyFiveLivePro
  module Models
    class SpaceListv2
      include JSON::Serializable

      class Content
        include JSON::Serializable

        @[JSON::Field(key: "requestId")]
        property request_id : Int64
        @[JSON::Field(key: "updated")]
        property updated : String

        class Data
          include JSON::Serializable

          @[JSON::Field(key: "paginateKey")]
          property paginate_key : Int64
          @[JSON::Field(key: "pageIndex")]
          property page_index : Int64
          @[JSON::Field(key: "totalPages")]
          property total_pages : Int64
          @[JSON::Field(key: "totalItems")]
          property total_items : Int64
          @[JSON::Field(key: "currentItemCount")]
          property current_item_count : Int64
          @[JSON::Field(key: "pagingLinkTemplate")]
          property paging_link_template : String
          @[JSON::Field(key: "items")]
          property items : Array(SpaceList)
        end

        @[JSON::Field(key: "data")]
        property data : Data
      end

      @[JSON::Field(key: "content")]
      property content : Content
    end
  end
end
